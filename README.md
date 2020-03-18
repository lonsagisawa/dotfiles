# dotfiles

## Requirement

* bspwm
  * polybar
    * python-gobject
    * pulseaudio
    * brightnessctl
* ttf-cica
* powerline-fonts
* ttf-roboto-mono
* rofi

## Usage

```
$ git clone https://github.com/mlny/dotfiles ~/.dotfiles
```

Can deploy with GNU Stow other than `misc` folder.

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

Place `misc/modprobe.d/psmouse.conf` into `/etc/modprobe.d/psmouse.conf` .

