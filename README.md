# lonsagisawa/dotfiles

<img width="1680" alt="Screenshot 2022-07-19 22 16 38" src="https://github.com/lonsagisawa/dotfiles/raw/master/Screenshot_20241110_033141.png">

dots of tinkerer. currently in Fedora KDE and macOS Sequoia.

## Instruction

Some applications have separate configuration.

- [Neovim](https://github.com/lonsagisawa/neovim)
- [fish](https://github.com/lonsagisawa/fish)

```shell
git clone https://github.com/lonsagisawa/dotfiles
```

for macOS, install Homebrew first.

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This dots designed for deploy with GNU Stow.

```shell
# macOS
brew install stow
# Fedora
sudo dnf install stow

stow ghostty-linux
```
