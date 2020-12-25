# variables
set -x EDITOR nvim
set -x SHELL fish

# PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /opt/homebrew/bin $PATH

# aliases
## Neovim
alias vim="nvim"

## git alias
alias g="git"
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gc="git commit"
alias gp="git push"

## replace ls for exa
alias ls="exa -l"
alias la="exa -la"

## homebrew workaround
alias brew="arch -arch arm64 /opt/homebrew/bin/brew"
alias brew_intel="arch -arch x86_64 /usr/local/bin/brew"

alias fish_intel="arch -arch x86_64 /usr/local/bin/fish"

# fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# suppress greeting
set fish_greeting
