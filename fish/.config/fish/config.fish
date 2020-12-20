# variables
set -x EDITOR nvim
set -x SHELL fish

# PATH
set -x PATH $HOME/.cargo/bin $PATH
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
alias brew="/usr/local/Homebrew/bin/brew"
alias brew_arm="arch -arch arm64e /opt/homebrew/bin/brew"
## VSC
alias code="/usr/local/bin/code-insiders"

# fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# suppress greeting
set fish_greeting

