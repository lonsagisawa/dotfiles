# dotfiles

WIP dwm dotfiles

## Requirement

* dwm with autostart patch
* betterlockscreen
* ttf-sarasa-gothic
* ttf-iosevka
* rofi
* Font Awesome 5

## Usage

```
$ git clone https://github.com/lonsagisawa/dotfiles
```

Can deploy with GNU Stow other than `misc` folder.

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

Didn't mentioned in any dotfiles, I recommend `ly` for display manager.

```
$ yay -S ly
$ sudo systemctl enable ly
```

### fstrim

```
$ sudo systemctl fstrim.timer
```
