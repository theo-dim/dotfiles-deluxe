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
#█▓▒░ history
HISTFILE="$HOME/.zhistory"
setopt APPEND_HISTORY
HISTSIZE=100000
SAVEHIST=10000000
HIST_STAMPS=mm/dd/yyyy
ZLE_RPROMPT_INDENT=0
WORDCHARS=${WORDCHARS//\/}
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
# setterm -linewrap on
