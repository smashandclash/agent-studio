#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "$SCRIPT_DIR/sync-skills.sh" generate-claude
bash "$SCRIPT_DIR/sync-skills.sh" generate-toplevel
bash "$SCRIPT_DIR/generate-cursor-adapters.sh"
bash "$SCRIPT_DIR/verify-skills-parity.sh"

echo "Generated all host adapters from canonical .agents"
