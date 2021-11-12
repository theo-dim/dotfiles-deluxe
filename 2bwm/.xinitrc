#!/bin/sh
#
#          ██          ██   ██
#         ░░          ░░   ░██
#  ██   ██ ██ ███████  ██ ██████ ██████  █████
# ░░██ ██ ░██░░██░░░██░██░░░██░ ░░██░░█ ██░░░██
#  ░░███  ░██ ░██  ░██░██  ░██   ░██ ░ ░██  ░░
#   ██░██ ░██ ░██  ░██░██  ░██   ░██   ░██   ██
#  ██ ░░██░██ ███  ░██░██  ░░██ ░███   ░░█████
# ░░   ░░ ░░ ░░░   ░░ ░░    ░░  ░░░     ░░░░░
#
# ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
# ░▓ author: Theodosios Dimitrasopoulos Novak | theonovak@mailfence.com ▓
# ░▓   info: https://linktr.ee/theo_dmtr                                ▓
# ░▓   repo: https://github.com/theo-dim/dotfiles-deluxe                ▓
# ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
#

# display
if [ $(xrandr | grep ' connected' | wc -l) -gt 1 ]; then
	~/.screenlayout/multi.sh &
else
	~/.screenlayout/solo.sh &
	# keyboard backlight
	kbd on &
	# caps is esc
	setxkbmap -option caps:escape &
fi

# merge custom x resources
xrdb -merge ~/.Xdefaults &

# fix + autohide cursor
xsetroot -cursor_name left_ptr &
unclutter &

# 2bwm
~/bin/wm &
exec xwait
