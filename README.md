# lonsagisawa/dotfiles

<img width="1680" alt="Screenshot 2022-07-19 22 16 38" src="https://github.com/lonsagisawa/dotfiles/raw/master/20230423_23h54m26s_grim.png">

dotfiles for my Linux laptop, currently pure wayland setup of Hyprland.

## Instruction

```shell
git clone https://github.com/lonsagisawa/dotfiles
```

for macOS, install Homebrew first.

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

Install plugins in nvim `:JetpackSync`.

## tmux

Setup TPM first:

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Press `C-b I` to install plugins in tmux.
