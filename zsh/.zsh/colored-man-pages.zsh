#                 ██                                    ████ ██
#                ░██                                   ░██░ ░░   █████
#  ██████  ██████░██         █████   ██████  ███████  ██████ ██ ██░░░██
# ░░░░██  ██░░░░ ░██████    ██░░░██ ██░░░░██░░██░░░██░░░██░ ░██░██  ░██
#    ██  ░░█████ ░██░░░██  ░██  ░░ ░██   ░██ ░██  ░██  ░██  ░██░░██████
#   ██    ░░░░░██░██  ░██  ░██   ██░██   ░██ ░██  ░██  ░██  ░██ ░░░░░██
#  ██████ ██████ ░██  ░██  ░░█████ ░░██████  ███  ░██  ░██  ░██  █████
#  ░░░░░░ ░░░░░░  ░░   ░░    ░░░░░   ░░░░░░  ░░░   ░░   ░░   ░░  ░░░░░
#
# ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
# ░▓ author: Theo Dimitrasopoulos Novak | theonovak@mailfence.com     ▓
# ░▓   info: https://linktr.ee/theo_dmtr                              ▓
# ░▓   repo: https://github.com/theo-dim/dotfiles-deluxe              ▓
# ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
#
#█▓▒░ source: https://github.com/imkira/dotfiles/blob/master/.zsh/colored-man-pages.zsh
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;33;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;146m'

if [ -x /usr/bin/dircolors ]
then
	# colorize ls files
	eval "$(dircolors -b)"
	# Take advantage of $LS_COLORS for completion as well
	zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
	precmd () { print -Pn "\e]0;%n@%m: %~\a" }
	;;
esac