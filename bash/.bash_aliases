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
#
#
# █▓▒░ DEFINITIONS
#
# █▓▒░ Interactive operation:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#
# █▓▒░ Default to human-readable figures:
alias df='df -h'
alias du='du -h'
#
# █▓▒░ Miscellaneous:
alias less='less -r'                            # raw control characters
alias whence='type -a'                          # where, of a sort
alias grep='grep --color'                       # show differences in colour
alias egrep='egrep --color=auto'                # show differences in colour
alias fgrep='fgrep --color=auto'                # show differences in colour
alias pow='sudo /cygdrive/c/cygwin64/setup-x86_64.exe'
alias bash='bash && source ~/.bash_profile && source ~/.bash_profile && source ~/.bashrc'
#
# █▓▒░ Directory listings:
alias ls='ls -hF --color=tty'                   # classify files in colour
# alias ls='ls --color=auto'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                                # long list
alias la='ls -A'                                # all but . and ..
alias l='ls -CF'
# alias l='ls -F'
alias ..='cd ..'
#
# █▓▒░ Custom functions:
alias cd=cd_func