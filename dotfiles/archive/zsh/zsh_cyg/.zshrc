## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

## Configure ZSH Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

## Standard > $ZSH/plugins/ and Custom > $ZSH_CUSTOM/plugins/
plugins=(git zsh-autosuggestions)

## Source $ZSH Extras:
source $ZSH/oh-my-zsh.sh
# ----------------------------------------------------------------------------
# ----------------------------------- MISC -----------------------------------
# ----------------------------------------------------------------------------
## Miscellaneous customizations:
HISTFILE="$HOME/.zsh_history"
HIST_STAMPS=mm/dd/yyyy
HISTSIZE=5000
SAVEHIST=5000
ZLE_RPROMPT_INDENT=0
WORDCHARS=${WORDCHARS//\/}

# colorize man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=-

#if [ -x /usr/bin/dircolors ]
#then
#	# colorize ls files
#	eval "$(dircolors -b)"
#	# Take advantage of $LS_COLORS for completion as well
#	zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
#fi

# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#	precmd () { print -Pn "\e]0;%n@%m: %~\a" }
#	;;
#esac
# ----------------------------------------------------------------------------
# ---------------------------------- OTHER -----------------------------------
# ----------------------------------------------------------------------------
## Export Display for GUI's:
#export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

## CUDA Executables:
#export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}

## Export Conda Browser PATH:
#export BROWSER="/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"

## Export Cargo PATH:
#export PATH="$HOME/.cargo/bin:$PATH"

## Conda Init
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/beta/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/beta/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/beta/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/beta/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
