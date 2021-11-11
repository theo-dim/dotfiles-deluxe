#                 ██      
#                ░██      
#  ██████  ██████░██      
# ░░░░██  ██░░░░ ░██████  
#    ██  ░░█████ ░██░░░██ 
#   ██    ░░░░░██░██  ░██ 
#  ██████ ██████ ░██  ░██ 
# ░░░░░░ ░░░░░░  ░░   ░░  
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ Theodosios Dimitrasopoulos Novak | theonovak@mailfence.com
# ░▓ info   ▓ https://linktr.ee/theo_dmtr
# ░▓ repo   ▓ https://github.com/theo-dim/dotfiles-deluxe
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░
#
#█▓▒░ timestamps
#HIST_STAMPS=yyyy/mm/dd

#█▓▒░ paths
export PATH=/usr/local/bin:$HOME/bin:$HOME/bin/build-wrapper-linux-x86:$HOME/.gem/ruby/2.5.0/bin:$HOME/.gem/ruby/2.6.0/bin/:$HOME/src/go/bin/:$HOME/.local/bin:$PATH
export MANPAGER="nvim -c 'set ft=man' -"
#export MANPATH=/usr/local/man:$MANPATH

## LaTeX Executables:
export PATH=/usr/local/texlive/2021/bin/x86_64-linux:$PATH

## Export Conda Browser PATH:
export BROWSER="/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"

#█▓▒░ preferred text editor
export EDITOR='vim'
export VISUAL='code'

#█▓▒░ language
export LC_COLLATE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LESSCHARSET=utf-8

#█▓▒░ go lang
export GOPATH=$HOME/src/go

#█▓▒░ java fixes
export _JAVA_AWT_WM_NONREPARENTING=1

#█▓▒░ no mosh titles
export MOSH_TITLE_NOPREFIX=1

#█▓▒░ Export Display for GUI's:
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0 #GWSL
export PULSE_SERVER=tcp:$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}') #GWSL
export LIBGL_ALWAYS_INDIRECT=1 #GWSL

#█▓▒░ Standard > $ZSH/plugins/ and Custom > $ZSH_CUSTOM/plugins/
plugins=(git)

## Source $ZSH Extras:
source $ZSH/oh-my-zsh.sh
