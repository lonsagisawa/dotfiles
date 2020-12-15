# I'm going to make switch

Recently bought MacBook Air(2020, M1) and it's awesome! Made some modification to dots and decided to maintain it as separate branch so Mac-specific dots going here: https://github.com/lonsagisawa/dotfiles/tree/macos

![Screenshot](https://i.imgur.com/MGReAwe.png)
![Dirtier screenshot](https://i.imgur.com/cCFAN5T.png)

# dotfiles

WIP dwm dotfiles

## Requirement

* [dwm with autostart patch](https://github.com/lonsagisawa/arch-pkgs)
* ttf-sarasa-gothic
* inter-font
* Neovim
* xob
* rofi
* Nerd Fonts Symbols

```
$ sudo pacman -S ttf-sarasa-gothic inter-font neovim rofi ttf-nerd-fonts-symbols
$ yay -S xob
```

## Usage

```
$ git clone https://github.com/lonsagisawa/dotfiles
```

Can deploy with GNU Stow **other than `misc` folder**.

```
$ stow bspwm
```

## Japanese Input

Install IBus and input method. I personally prefer `ibus-skk`.

```
$ sudo pacman -S ibus ibus-skk skk-jisyo
```

## Touchpad fix

ThinkPad X240's trackpad has sleep issue. Place `misc/modprobe.d/psmouse.conf` into `/etc/modprobe.d/psmouse.conf` .

## Neovim

Setup Vundle.vim first

```shell
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Then install plugins in nvim `:PluginInstall`

## Other recommendations

### Display Manager

Didn't mentioned in any dotfiles, I use `lightdm` for display manager and `light-locker` for screen locker.

```
$ sudo pacman -S lightdm lightdm-gtk-greeter light-locker
$ sudo systemctl enable lightdm
```

### fstrim

```
$ sudo systemctl fstrim.timer
```
