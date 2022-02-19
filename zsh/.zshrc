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

# zsh-completions and zsh-autosuggestions
# brew install zsh-completions zsh-autosuggestions
# chmod -R go-w /opt/homebrew/share
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  autoload -Uz compinit
  compinit
fi

# zsh-autosuggestions

# starship prompt
eval "$(starship init zsh)"
