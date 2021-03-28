# lonsagisawa/dotfiles

<img width="1680" alt="Screenshot 2021-03-28 22 37 22" src="https://user-images.githubusercontent.com/5173607/112754459-2e473c00-9017-11eb-8031-d34e06741690.png">
<img width="1680" alt="Screenshot 2021-03-28 22 40 27" src="https://user-images.githubusercontent.com/5173607/112754462-31dac300-9017-11eb-948d-fa630c4b9351.png">

dotfiles for M1 MacBook Air setup. Some Linux/ThinkPad setup pieces also remains here.

## Usage

```shell
git clone https://github.com/lonsagisawa/dotfiles
```

Can deploy with GNU Stow **other than `misc` folder**.

```shell
stow neovim
```

## Mac instruction

Install Homebrew first.

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This dots designed for deploy with GNU Stow.

```shell
/opt/homebrew/bin/brew install stow
```

I use fish for shell. My fish configuration has `$PATH` workaround for Homebrew on M1 and recommend to comfortable use.

```shell
/opt/homebrew/bin/brew install fish
/opt/homebrew/bin/stow fish
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```

Then restart terminal and install fisher

```shell
curl -sL https://git.io/fisher | source && fisher update
```

## Neovim

Setup vim-plug first:

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

## Linux caveats

### Japanese Input

Install IBus and input method. I personally prefer `ibus-skk`.

```shell
sudo pacman -S ibus ibus-skk skk-jisyo
```

### Touchpad fix

ThinkPad X240's trackpad has sleep issue. Place `misc/modprobe.d/psmouse.conf` into `/etc/modprobe.d/psmouse.conf` .

### Display Manager

I use `lightdm` for display manager and `light-locker` for screen locker.

```shell
sudo pacman -S lightdm lightdm-gtk-greeter light-locker
sudo systemctl enable lightdm
```

However, it runs X with root privilege. Manually run `startx` in your login shell is generally safer choice.

### fstrim

Better SSD life management.

```shell
sudo systemctl fstrim.timer
```
