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
Full suite of dotfiles and fonts for Archlinux (easily customizable for other distributions as well). 
# Stow Installation
stow is available for all linux and most other unix like distributions via your package manager.

- `sudo pacman -S stow`
- `sudo apt-get install stow`
- `brew install stow`
# Dependencies:
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
# Integrating the Dotfiles
1. Navigate to your home directory

`cd ~`

2. clone the repo:

`git clone https://github.com/theo-dim/dotfiles-deluxe.git`

3. enter the dotfiles directory

`cd dotfiles-deluxe`

4. install the zsh settings

`stow zsh`

5. install zsh settings for the root user

`sudo stow zsh -t /root`

6. install some theme

`stow theme_name`

7. uninstall awesome theme

`stow -D theme_name`

# Fonts:
The font files are stored in ```~/dotfiles-deluxe/figlet/```

# Favorites:
- [plug](https://github.com/junegunn/vim-plug) - to manage other plugins
- [vim completes me](https://github.com/ajh17/VimCompletesMe) - super lightweight completion system
- [colorizer](https://github.com/lilydjwg/colorizer) - display color codes as their colors inline
- [ale](https://github.com/w0rp/ale) - async syntax linting
- [git gutter](https://github.com/airblade/vim-gitgutter) - git diff in the gutter
- [match it](https://github.com/isa/vim-matchit) - extended word and regex matching
- [lightline](https://github.com/itchyny/lightline.vim) - custom status line (for much rice)
- [fugitive](https://github.com/tpope/vim-fugitive) - fast git integration
- [GV](https://github.com/junegunn/gv.vim) - git commit browser (great for pr review)
- [vim-tmux-clipboard](https://github.com/roxma/vim-tmux-clipboard) - seamless integration between vim, tmux, and the system clipboard
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - seamless navigation between tmux panes and vim splits
- [vim-tmux-resizer](https://github.com/melonmanchan/vim-tmux-resizer) - resize tmux panes and vim splits with same keybinds
