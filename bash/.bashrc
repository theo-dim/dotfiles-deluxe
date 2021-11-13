#  ██████                     ██
# ░█░░░░██                   ░██
# ░█   ░██   ██████    ██████░██
# ░██████   ░░░░░░██  ██░░░░ ░██████
# ░█░░░░ ██  ███████ ░░█████ ░██░░░██
# ░█    ░██ ██░░░░██  ░░░░░██░██  ░██
# ░███████ ░░████████ ██████ ░██  ░██
# ░░░░░░░   ░░░░░░░░ ░░░░░░  ░░   ░░                                                                                                                       #
#
# ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
# ░▓ author: Theodosios Dimitrasopoulos Novak | theonovak@mailfence.com ▓
# ░▓   info: https://linktr.ee/theo_dmtr                                ▓
# ░▓   repo: https://github.com/theo-dim/dotfiles-deluxe                ▓
# ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
#                                                                                                                       #
#█▓▒░ If not running interactively, don't do anything
[[ "$-" != *i* ]] && return
#                                                                                                                         #
#█▓▒░ SOURCING
#                                                                                                                         #
#█▓▒░ .bash_profile masterfile for login shells
if [ -f "${HOME}/.bash_profile" ];
 then
	 source "${HOME}/.bash_profile"
	 #echo 'Login shell definitions loaded successfully'
 fi
#                                                                                                                         #
#█▓▒░ GENERAL
#                                                                                                                         #
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Programmable completion enhancements are enabled via
# /etc/profile.d/bash_completion.sh when the package bash_completetion
# is installed.  Any completions you add in ~/.bash_completion are
# sourced last.
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#                                                                                                                         #
#█▓▒░ HISTORY
#                                                                                                                         #
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#                                                                                                                         #
#█▓▒░ NETWORKING
#                                                                                                                         #
# Umask
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077
#                                                                                                                         #
#█▓▒░ AUTO-ADD
#                                                                                                                         #
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
#
#█▓▒░ DISPLAY
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0 #GWSL
export PULSE_SERVER=tcp:$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}') #GWSL
export LIBGL_ALWAYS_INDIRECT=1 #GWSL
export GDK_SCALE=1 #GWSL
export QT_SCALE_FACTOR=1 #GWSL
#
#█▓▒░ ANACONDA
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/theo/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/theo/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/theo/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/theo/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
. "$HOME/.cargo/env"
