# Omarchy environment (OMARCHY_PATH + PATH), needed even for non-interactive shells
[[ -r /usr/share/omarchy/default/bash/env-bootstrap ]] && source /usr/share/omarchy/default/bash/env-bootstrap

# If not running interactively, don't do anything else (leave this above the rc source)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source "$OMARCHY_PATH/default/bash/rc"

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
alias agy='agy --dangerously-skip-permissions'

# Hide Antigravity CLI banner elements
export AGY_CLI_HIDE_LOGO=1
export AGY_CLI_HIDE_ACCOUNT_INFO=1
export AGY_CLI_HIDE_BANNER=1


. "$HOME/.local/share/../bin/env"
export OPENROUTER_API_KEY="REDACTED_API_KEY"


# Qwen Code PATH block begin
export PATH='/home/basant/.local/bin':$PATH
# Qwen Code PATH block end
export PATH="$HOME/bin:$PATH"

# OmniRoute via Claude Code
export OMNIROUTE_API_KEY="REDACTED_API_KEY"
export CLAUDE_CONFIG_DIR="$HOME/.claude-omniroute"
export ANTHROPIC_BASE_URL="http://localhost:20128"
export ANTHROPIC_AUTH_TOKEN="REDACTED_AUTH_TOKEN"
export ANTHROPIC_MODEL="free-stack-ai"
export CLAUDE_CODE_MAX_CONTEXT_TOKENS="1000000"
export CLAUDE_CODE_DISABLE_UNKNOWN_MODEL_WINDOW_ENFORCEMENT="1"

# OmniRoute OpenAI-Compatible Endpoint (Unlimited Free-Tier Routing)
export OPENAI_BASE_URL="http://localhost:20128/v1"
export OPENAI_API_KEY="$OMNIROUTE_API_KEY"
export OPENAI_MODEL="auto"

# Claude Code → OmniRoute wrapper function (overrides mise shim)
claude() {
    env -u ANTHROPIC_API_KEY \
    CLAUDE_CONFIG_DIR="$HOME/.claude-omniroute" \
    ANTHROPIC_BASE_URL="http://localhost:20128" \
    ANTHROPIC_AUTH_TOKEN="REDACTED_AUTH_TOKEN" \
    ANTHROPIC_MODEL="free-stack-ai" \
    CLAUDE_CODE_MAX_CONTEXT_TOKENS="1000000" \
    CLAUDE_CODE_DISABLE_UNKNOWN_MODEL_WINDOW_ENFORCEMENT="1" \
    /home/basant/.local/share/mise/installs/claude/latest/claude "$@"
}

# kimi-code
export PATH="/home/basant/.kimi-code/bin:$PATH"
alias agy="agy --dangerously-skip-permissions"
export OBSIDIAN_VAULT_PATH="/home/basant/Documents/Obsidian Vault"


# mimocode
export PATH=/home/basant/.mimocode/bin:$PATH
