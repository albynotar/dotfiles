if status is-interactive
    # Commands to run in interactive sessions can go here
end

# remove greeting
set fish_greeting

# set editor
export EDITOR=nano
export VISUAL="$EDITOR"

# iterm2
source ~/.iterm2_shell_integration.fish
