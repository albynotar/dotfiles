# GLOBAL VARIABLES
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR=nano
export VISUAL="$EDITOR"

# ITERM2
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# UV
. "$HOME/.local/bin/env"
eval "$(uv generate-shell-completion bash)"
eval "$(uvx --generate-shell-completion bash)"
. "$HOME/.cargo/env"

