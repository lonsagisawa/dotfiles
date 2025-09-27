# lonsagisawa/dotfiles

<img width="1680" alt="Screenshot 2022-07-19 22 16 38" src="https://github.com/lonsagisawa/dotfiles/raw/master/Screenshot_2025-09-27_19-57-55.png">

dots of tinkerer. currently in Fedora with Niri and macOS Sequoia.

## Instruction

Some applications have separate configuration.

- [Neovim](https://github.com/lonsagisawa/neovim)

```shell
cd
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

### Niri

Niri configuration utilise noctalia-shell. [Install it first](https://docs.noctalia.dev/).

```shell
mkdir -p ~/.config/systemd/user
cd ~/dotfiles
stow niri
systemctl --user add-wants niri.service noctalia-shell
```
