# dotfiles

## Requirement

* sway
  * waybar
    * python-gobject
    * pulseaudio
    * acpilight
* ttf-cica

## Usage

```
$ git clone https://github.com/mlny/dotfiles ~/.dotfiles
```

## Japanese Input

First, install IBus and input method. I personally prefer `ibus-skk`.

```
$ sudo pacman -S ibus ibus-skk skk-jisyo
```

Need to set environmental variables, I put them on `/etc/environments`: 

```
GTK_IM_MODULE=ibus
XMODIFIERS=@im=ibus
QT_IM_MODULE=ibus
GLFW_IM_MODULE=ibus
```

## Touchpad two-finger scroll issue fix

Place trackpadfix.sh properly and double-check inside trackpadfix.service, then:

```
$ sudo cp trackpadfix.service /etc/systemd/system/trackpadfix.service
$ sudo systemctl enable trackpadfix
```

## Neovim

Uses dein.vim. Clone dein.vim first.

```
$ mkdir -p ~/.cache/dein/repos/github.com/Shougo
$ git clone https://github.com/Shougo/dein.vim ~/.cache/dein/repos/github.com/Shougo/dein.vim
```

Then excute `:call dein#install()`.
