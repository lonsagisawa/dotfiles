# Almost stolen from: 
# https://zenn.dev/sprout2000/articles/bd1fac2f3f83bc

# Colors
autoload -Uz colors && colors

# make sure newly installed commands works
zstyle ":completion:*:commands" rehash 1

# env
export EDITOR=nvim

# auto cd
setopt auto_cd

# correct spelling
setopt correct

# PATH
typeset -U path PATH
path=(
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  $HOME/.cargo/bin(N-/)
  $HOME/.deno/bin(N-/)
  $HOME/.composer/vendor/bin(N-/)
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /Library/Apple/usr/bin
)

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

# zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

# plugins
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light trystan2k/zsh-tab-title
zinit light zsh-users/zsh-syntax-highlighting

# Enable completions
autoload -Uz compinit
compinit

# syntax highlight color scheme
source ~/.zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh

# fnm(Node.js version management)
eval "$(fnm env --use-on-cd)"

# Keychain
if [[ $(uname) == Linux ]]; then
  keychain -q --nogui $HOME/.ssh/id_ed25519
  source $HOME/.keychain/$HOST-sh
fi

# Deno

if [[ $(uname) == Linux && $(lsb_release -is) == Gentoo || Ubuntu ]]; then
  export DENO_INSTALL="/home/lon/.deno"
fi

# starship
eval "$(starship init zsh)"

