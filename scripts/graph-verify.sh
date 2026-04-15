#!/usr/bin/env bash
# graph-verify.sh — post-build verification of graph quality
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
GRAPH_FILE="$ROOT_DIR/graphify-out/graph.json"
REPORT_FILE="$ROOT_DIR/graphify-out/GRAPH_REPORT.md"

if [[ ! -f "$GRAPH_FILE" ]]; then
  echo "[error] graph.json missing — run: graphify . --mode deep --obsidian --output-dir ./obsidian-template/"
  exit 1
fi

PASS=0
FAIL=0

# 1. Count nodes and edges
NODES=$(jq '.nodes | length' "$GRAPH_FILE")
EDGES=$(jq '.links | length' "$GRAPH_FILE")
if [[ $NODES -eq 0 ]]; then
  echo "[FAIL] 0 nodes — graph is empty"
  FAIL=$((FAIL + 1))
else
  RATIO=$(echo "scale=2; $EDGES / $NODES" | bc)
  if (( $(echo "$RATIO < 1.0" | bc -l) )); then
    echo "[WARN] edge/node ratio $RATIO (< 1.0) — consider --mode deep rebuild"
  elif (( $(echo "$RATIO < 1.5" | bc -l) )); then
    echo "[WARN] edge/node ratio $RATIO (< 1.5) — acceptable but could improve"
  else
    echo "[PASS] edge/node ratio $RATIO ($NODES nodes, $EDGES edges)"
    PASS=$((PASS + 1))
  fi
fi

# 2. Check GRAPH_REPORT.md
if [[ -f "$REPORT_FILE" ]]; then
  if grep -q "God Node" "$REPORT_FILE" 2>/dev/null; then
    echo "[PASS] GRAPH_REPORT.md contains God Nodes section"
    PASS=$((PASS + 1))
  else
    echo "[WARN] GRAPH_REPORT.md exists but may lack expected sections"
  fi
else
  echo "[FAIL] GRAPH_REPORT.md not found"
  FAIL=$((FAIL + 1))
fi

# 3. Check edge types
EXTRACTED=$(jq '[.links[] | select(.confidence == "EXTRACTED" or .confidence == 1.0)] | length' "$GRAPH_FILE" 2>/dev/null || echo 0)
INFERRED=$(jq '[.links[] | select(.confidence == "INFERRED" or .confidence == "AMBIGUOUS" or (.confidence_score != null and .confidence_score < 1.0))] | length' "$GRAPH_FILE" 2>/dev/null || echo 0)
if [[ $EXTRACTED -gt 0 && $INFERRED -gt 0 ]]; then
  echo "[PASS] edge types: $EXTRACTED extracted, $INFERRED inferred"
  PASS=$((PASS + 1))
elif [[ $EXTRACTED -gt 0 ]]; then
  echo "[WARN] only extracted edges ($EXTRACTED); no inferred — consider --mode deep"
else
  echo "[WARN] edge type distribution: extracted=$EXTRACTED inferred=$INFERRED"
fi

# 4. Check graph.html
if [[ -f "$ROOT_DIR/graphify-out/graph.html" ]]; then
  echo "[PASS] graph.html exists"
  PASS=$((PASS + 1))
else
  echo "[WARN] graph.html not found"
fi

echo ""
echo "[summary] $PASS passed, $FAIL failed"
[[ $FAIL -eq 0 ]] && exit 0 || exit 1
