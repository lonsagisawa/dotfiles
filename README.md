# dotfiles

dots of distro-hopper. Now settled on Apple Silicon Mac.

![Mac screenshot](https://user-images.githubusercontent.com/5173607/107106757-84e29600-6870-11eb-9364-0f8c25990120.png)  
![Dirtier dwm screenshot](https://i.imgur.com/cCFAN5T.png)

## Linux Requirement

* [dwm with autostart patch](https://github.com/lonsagisawa/dwm)
* ttf-sarasa-gothic
* inter-font
* Neovim
* xob
* rofi
* Nerd Fonts Symbols

```shell
sudo pacman -S ttf-sarasa-gothic inter-font neovim rofi ttf-nerd-fonts-symbols
yay -S xob
```

## Mac Requirement

This dots designed to deploy with GNU Stow. It can be installed from Homebrew or MacPorts.

```shell
brew install stow
```

## Usage

```shell
git clone https://github.com/lonsagisawa/dotfiles
```

Can deploy with GNU Stow **other than `misc` folder**.

```shell
stow neovim
```

## Neovim

Setup Vundle.vim first:

```shell
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Then install plugins in nvim `:PluginInstall`.

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

## Mac recommendations

### Use Touch ID for sudo

```shell
sudo chmod +w /etc/pam.d/sudo
sudo nvim /etc/pam.d/sudo
```

Add this line:

```
auth       sufficient     pam_tid.so
```

Save, then:

```shell
sudo chmod -w /etc/pam.d/sudo
```
