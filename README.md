# dotfiles

## Requirement

* sway
  * waybar
    * python-gobject
    * pulseaudio
    * acpilight
* ttf-cica

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
```

## Touchpad two-finger scroll issue fix

Place trackpadfix.sh properly and double-check inside trackpadfix.service, then:

```
$ sudo cp trackpadfix.service /etc/systemd/system/trackpadfix.service
$ sudo systemctl enable trackpadfix
```