#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"$SCRIPT_DIR/sync-skills.sh" generate-claude
"$SCRIPT_DIR/sync-skills.sh" generate-toplevel
"$SCRIPT_DIR/generate-cursor-adapters.sh"
"$SCRIPT_DIR/verify-skills-parity.sh"

echo "Generated all host adapters from canonical .agents"
