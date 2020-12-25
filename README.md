![](https://user-images.githubusercontent.com/5173607/102468326-476c4400-4049-11eb-94dc-92c5b8a361ef.png)

# New dotfiles for Apple Silicon Mac

## Recommended Apps

* Firefox  
  The one and only web browser not ruined by Google's anti-adblock strategy and Apple's too much restrictive attitude to browser extensions. Free and open-source.
* Alfred  
  Spotlight replacement. PROPRIETARY but free(as a beer).
* Bartender  
  Make menubar organized. PROPRIETARY paid app.
* Amphetamine  
  Keep waking up MacBook. PROPRIETARY but free(as a beer).
* Rectangle  
  Adds basic window management. Free and open-source.
* Some terminal  
  Apple's Terminal.app is really minimal and primitive terminal.  
  I recommend Alacritty if you are comfortable with tmux. If not, iTerm 2 is also great choice. Both are Free and open-source.

## Some tips

* I really recommend to enable three-finger drag.

### Install Homebrew for ARM and x86

Start your favorite terminal on Rosetta. It will start zsh in Rosetta too.

First install brew in Rosetta env.

```shell
% /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Next, start terminal app in native. Homebrew needs to be installed manually, it can be also installed separately from Intel brew installation.

```shell
% sudo mkdir -p /opt/homebrew
% sudo chown $USER /opt/homebrew
% cd /opt
% curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
```

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

## Neovim

Setup Vundle.vim first

```shell
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Then install plugins in nvim `:PluginInstall`
