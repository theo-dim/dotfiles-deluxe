```
░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
░▓             ██            ██     ████ ██  ██                       ▓
░▓            ░██           ░██    ░██░ ░░  ░██                       ▓
░▓            ░██  ██████  ██████ ██████ ██ ░██  █████   ██████       ▓
░▓         ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░        ▓
░▓        ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████        ▓
░▓       ░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██       ▓
░▓       ░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████        ▓
░▓        ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░         ▓
░▓             ██          ██                                         ▓
░▓            ░██         ░██                                         ▓
░▓            ░██  █████  ░██ ██   ██ ██   ██  █████                  ▓
░▓         ██████ ██░░░██ ░██░██  ░██░░██ ██  ██░░░██                 ▓
░▓        ██░░░██░███████ ░██░██  ░██ ░░███  ░███████                 ▓
░▓        ░██  ░██░██░░░░  ░██░██  ░██  ██░██ ░██░░░░                 ▓
░▓        ░░██████░░██████ ███░░██████ ██ ░░██░░██████                ▓
░▓         ░░░░░░  ░░░░░░ ░░░  ░░░░░░ ░░   ░░  ░░░░░░                 ▓
░▓                                                                    ▓
░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
░▓ author: Theodosios Dimitrasopoulos Novak | theonovak@mailfence.com ▓
░▓   info: https://linktr.ee/theo_dmtr                                ▓
░▓   repo: https://github.com/theo-dim/dotfiles-deluxe                ▓
░▓    pgp: 0xFFCFCBF6AC8BB373                                         ▓
░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
```

# Table of Contents
 - [Introduction](#dotfiles-deluxe)
 - [Symlinks with Stow](#stow-installation)
 - [Dependencies](#dependencies)
 - [Integration](#integrating-the-dotfiles)
 - [Fonts](#fonts)
 - [Other](#other)

# Dotfiles Deluxe
Full suite of dotfiles and fonts for your Linux distributions!
## Stow Installation
stow is available for all linux and most other unix like distributions via your package manager.

- `sudo pacman -S stow`
- `sudo apt-get install stow`
- `brew install stow`

## Dependencies
The following packages are needed in order to properly run the dotfiles:
- keychain
- lolcat
- figlet
- zsh + [oh-my-zsh](https://ohmyz.sh/) (includes the git, zsh-autosuggestions and zsh-syntax-highlighting plugins). For additional instructions on how to install oh-my-zsh, visit: 
- (optional): The [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh) theme for oh-my-zsh provides useful autocompletion and other features.
- vim
- nvim
- git

They can be installed using pacman/aurman (Arch) or the native package manager in your system:
```bash
aurman -S keychain lolcat figlet zsh vim nvim git
OR
sudo apt update -y && sudo apt upgrade -y && sudo apt install keychain lolcat figlet zsh vim nvim git
```

## Integrating the Dotfiles
1. Navigate to your home directory:
`cd ~`

2. Clone the repo:
`git clone https://github.com/theo-dim/dotfiles-deluxe.git`

3. Navigate in the dotfiles directory:
`cd dotfiles-deluxe`

4. Install the zsh configuration files:
`stow zsh`

5. Install the zsh configuration files for root:
`sudo stow zsh -t /root`

6. Install a theme:
`stow theme_name`

7. Uninstall a symlink farm:
`stow -D theme_name`

# Fonts
The font files are stored in ```~/dotfiles-deluxe/figlet/```

# Favorites
These are some of my favorite packages that accompany my Arch Linux distribution (WSL2):
- [git gutter](https://github.com/airblade/vim-gitgutter) - git diff in the gutter
- [fugitive](https://github.com/tpope/vim-fugitive) - fast git integration
- [plug](https://github.com/junegunn/vim-plug) - to manage other plugins
- [figlet](http://www.figlet.org/) FIGlet is a program for making large letters out of ordinary text
- [toilet](https://helloacm.com/toilet/) TOIlet prints text using large characters made of smaller characters
- [task](https://archlinux.org/packages/community/x86_64/task/) A command-line todo list manager