#!/usr/bin/env bash
# bin/trigger-workflow.sh — trigger any GH workflow by name (repo env aware)
set -euo pipefail
REPO="${1:-${GH_OWNER:-shardie-github}/suite-b}"
WORKFLOW="${2:-predictive-ops.yml}"
gh workflow run "$WORKFLOW" --repo "$REPO" || true
echo "Triggered $WORKFLOW on $REPO"
