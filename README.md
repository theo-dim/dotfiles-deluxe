# Dotfiles Deluxe
Full suite of dotfiles and fonts for Archlinux and Pengwin (easily customizable for other distributions as well).

## Dependencies:
The following packages are neeeded in order to properly run the dotfiles:
- keychain
- lolcat
- figlet
- zsh + oh-my-zsh (includes the git, zsh-autosuggestions and zsh-syntax-highlighting plugins). For additional instructions on how to install oh-my-zsh, visit: https://ohmyz.sh/
- (optional): The Powerlevel10k theme for oh-my-zsh provides useful autocompletion and other features. For more information and installation instructions, visit https://github.com/romkatv/powerlevel10k#oh-my-zsh
- vim
- nvim
- git

They can be installed using pacman/aurman (Arch) or apt (Pengwin):
```bash
aurman -S keychain lolcat figlet zsh vim nvim git
OR
sudo apt update -y && sudo apt upgrade -y && sudo apt install keychain lolcat figlet zsh vim nvim git
```
# tl;dr
navigate to your home directory

`cd ~`

clone the repo:

`git clone http://git.xero.nu/dotfiles.git`

enter the dotfiles directory

`cd dotfiles`

install the zsh settings

`stow zsh`

install zsh settings for the root user

`sudo stow zsh -t /root`

install awesomewm theme

`stow awesome`

uninstall awesome theme

`stow -D awesome`

install herbstluftwm

`stow herbstluftwm`

etc, etc, etc...

## Fonts:
Unzip the fonts tarball in ```~/.local/share/fonts/``` (useful for figlet)
