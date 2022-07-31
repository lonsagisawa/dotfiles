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
  /opt/homebrew/opt/node@16/bin(N-/)
  $HOME/.cargo/bin(N-/)
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

# Enable completions
autoload -Uz compinit
compinit

# starship prompt
eval "$(starship init zsh)"

# fnm(Node.js version management)
eval "$(fnm env --use-on-cd)"
