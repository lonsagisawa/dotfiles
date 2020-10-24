# variables
set -x EDITOR nvim
set -x TERM alacritty
set -x SHELL fish

# PATH
set -x PATH $HOME/.cargo/bin $PATH

# aliases
alias vim="nvim"
alias g="git"
alias gs="git status"
alias gd="git diff"
alias ls="exa -l"
alias la="exa -la"

# fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

