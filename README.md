# lonsagisawa/dotfiles

<img width="1680" alt="Screenshot 2022-07-19 22 16 38" src="https://user-images.githubusercontent.com/5173607/179759587-afd6648b-78f9-40af-bbe8-3fe7e4347ab3.png">

dotfiles for my MacBook Air(M1).

## Instruction

```shell
git clone https://github.com/lonsagisawa/dotfiles
```

Install Homebrew first.

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This dots designed for deploy with GNU Stow.

```shell
brew install stow
stow neovim
```

### zsh

Install zinit first.

```shell
git clone https://github.com/zdharma-continuum/zinit.git ~/.local/share/zinit/zinit.git
```

## Neovim

Install vim-plug first.

```shell
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Then install plugins in nvim `:PlugInstall`.

## tmux

Setup TPM first:

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Press `C-b I` to install plugins in tmux.
