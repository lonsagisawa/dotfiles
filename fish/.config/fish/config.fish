# variables
set -x EDITOR nvim
set -x TERM alacritty
set -x SHELL fish

# vi keybindings
fish_vi_key_bindings

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

# bobthefish
set -g theme_nerd_fonts yes
set -g theme_color_scheme terminal2

fortune | cowsay
