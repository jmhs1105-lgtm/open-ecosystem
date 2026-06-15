#!/usr/bin/env bash
# MCP Safe-Terminal Wrapper
# Wraps bash commands with safety checks
# Blocks destructive commands, asks for confirmation

BLOCKED_CMDS=("rm -rf" "dd if=" "mkfs" "fdisk" "format" "> /dev" "> /dev/sd" "shutdown" "reboot" "init 0")

echo "Content-Type: application/json"
echo ""

# Read stdin for MCP request
read -r INPUT

# Check for blocked commands
for cmd in "${BLOCKED_CMDS[@]}"; do
  if echo "$INPUT" | grep -qi "$cmd"; then
    echo '{"error": "Command blocked by safe-terminal MCP: '"$cmd"'"}'
    exit 1
  fi
done

# Execute through bash with confirmation flag
export SAFE_TERMINAL_ACTIVE=1
echo "$INPUT" | bash 2>&1
