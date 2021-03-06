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
# ░▓ author: Theo Novak Dimitrasopoulos | theonovak@mailfence.com     ▓
# ░▓   info: https://linktr.ee/theo_dmtr                              ▓
# ░▓   repo: https://github.com/theo-dim/dotfiles-deluxe              ▓
# ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
#
# █▓▒░ aliases
alias c="clear"
alias g="grep -i"
alias l="ls -hF --color=auto"
alias ll="ls -lahF --color=auto"
alias cb="xsel -b"
alias p="pass -c"
alias e="$EDITOR"
alias se="sudo $EDITOR"
alias g="git"
alias u="node ~/src/unicoder/unicoder.js "
alias upapt="sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove && sudo apt clean"
alias pyquant="fin && python ~/Projects/PythonTerminal/terminal.py"
alias code="/mnt/c/Users/theon/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code"
#
#lazy
alias "cd.."="cd ../"
alias rmrf="rm -rf"
alias psef="ps -ef"
#
#git
alias ga="git add ."
alias gc="git commit -m"
alias gs="git status"
alias gd="git diff"
alias gf="git fetch"
alias gm="git merge"
alias gr="git rebase"
alias gp="git push"
alias gu="git unstage"
alias gg="git graph"
alias ggg="git graphgpg"
alias gco="git checkout"
alias gcs="git commit -S -m"
alias gpr="hub pull-request"
#
#overrides
alias mkdir="mkdir -p"
alias cp="cp -r"
alias scp="scp -r"
alias xsel="xsel -b"
alias vimdiff="nvim -d -u ~/.vimrc"
alias emacs="nvim"
alias pacman="sudo pacman"
alias systemctl="sudo systemctl"
alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
#
#curl
alias csilx="curl -sILX GET"
alias curld="curl -A \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36\""
alias curlm="curl -A \"Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/28.0.1500.12 Mobile/10B329 Safari/8536.25\""
#
# ascii
alias toiletlist='for i in ${TOILET_FONT_PATH:=/usr/share/figlet}/*.{t,f}lf; do j=${i##*/}; echo ""; echo "╓───── "$j; echo "╙────────────────────────────────────── ─ ─ "; echo ""; toilet -d "${i%/*}" -f "$j" "${j%.*}"; done'
alias tdlist='for i in ${TD_FONT_PATH:=/usr/local/share/tdfiglet/fonts}/*.tdf; do j=${i##*/}; echo ""; echo "╓───── "$j; echo "╙────────────────────────────────────── ─ ─ "; echo ""; tdfiglet -f "$j" "${j%.*}"; done'
alias ascii="toilet -t -f 3d"
alias future="toilet -t -f future"
alias rusto="toilet -t -f rusto"
alias rustofat="toilet -t -f rustofat"
#
#silly
alias xyzzy="echo nothing happens"
alias up="cd ../"
alias fuck='sudo $(fc -ln -1)'
alias lol="base64 </dev/urandom | lolcat"
alias matrix="cmatrix -b"
#
alias update="pacman-colors && yay -Syu --editmenu"
alias k8s="kubectl"
alias k9="kubectl"
alias ZZ="exit"
alias disks='echo "╓───── m o u n t . p o i n t s"; \
			 echo "╙────────────────────────────────────── ─ ─ "; \
			 lsblk -a; echo ""; \
			 echo "╓───── d i s k . u s a g e";\
			 echo "╙────────────────────────────────────── ─ ─ "; \
			 df -h;'
alias record="ffmpeg -f x11grab -s 1366x768 -an -r 16 -loglevel quiet -i :0.0 -b:v 5M -y" #pass a filename
alias nexus="jmtpfs ~/nexus"
alias doc="sudo docker"
alias zen="while :; do bonsai -l -b 2 -c oO0 -t 0.5; sleep 10; done"
alias docstats="sudo docker ps -q | xargs  docker stats --no-stream"
#
# █▓▒░ Core aliases:
alias wslstop='wsl.exe --shutdown'
alias plasma='dbus-launch startplasma-x11'
#
# █▓▒░ General aliases:
#alias ls='ls -al'
#
# █▓▒░ Configuration file aliases:
alias dotconfig='cd dotfiles-deluxe && code .'
alias zshaliases='code ~/.zsh/06-aliases.zsh'
alias bashaliases='code ~/.bash_aliases'
alias ohmyzsh='code ~/.oh-my-zsh'
#
# █▓▒░ Anaconda aliases:
alias nopy='conda deactivate'
alias fin='conda deactivate && conda activate finance'
alias base='conda deactivate && conda activate base'
alias aws='conda deactivate && conda activate aws'
alias cs='conda deactivate && conda activate cs'
alias envs='conda env list'
alias condaclean='conda clean --all -y'
#
# █▓▒░ Other aliases:
alias tasks='task list && task sync'
alias texupdate='sudo tlmgr update --all'
alias texworks='texworks -stylesheet  ~/.TeXworks/configuration/custom-stylesheet.css'
alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
#
# █▓▒░ Sort aliases:
# color
alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias pacman='pacman --color=auto'
# other
#alias ..='cd ..'
alias scss='scss --no-cache --quiet --sourcemap=none'
alias xclip='xclip -selection c'
# replace commands
alias ll='ls -l'
alias la='ls -A'
alias l='ls -F'
command -v lsd > /dev/null && alias ls='lsd --group-dirs first' && alias tree='lsd --tree'
command -v colorls > /dev/null && alias ls='colorls --sd --gs' && alias tree='colorls --tree'
command -v htop > /dev/null && alias top='htop'
command -v ytop > /dev/null && alias top='ytop -p $([ "$COLOR_SCHEME" = "dark" ])'
command -v bashtop > /dev/null && alias top='bashtop' # themes for light/dark color-schemes inside ~/.config/bashtop;
#
function docclean() {
	sudo docker rm $(sudo docker ps -a -q)
	sudo docker rmi $(sudo docker images -q)
}
# █▓▒░ update mpd database
function genplaylist() {
	cd ~/music
	find . -name '*.mp3' -o -name '*.flac'|sed -e 's%^./%%g' > ~/.config/mpd/playlists/all.m3u
	mpc clear
	mpc load all.m3u
	mpc update
}
# █▓▒░ tmux
function t() {
	X=$#
	[[ $X -eq 0 ]] || X=X
	tmux new-session -A -s $X
}
# █▓▒░ cli mail
function email() {
	echo $3 | mutt -s $2 $1
}
# █▓▒░ read stuff like manpages
function md() {
	pandoc -s -f markdown -t man "$*" | man -l -
}
function manwww() {
	curl -skL "$*" | pandoc -s -f html -t man | man -l -
}
# █▓▒░ hide gross warnings
function pdf {
	zathura "$*" &>/dev/null
}
# █▓▒░ nullpointer url shortener
function short() {
	curl -F"shorten=$*" https://0x0.st
}
# █▓▒░ smaller scrots
function scrot_area() {
	read -r G < <(slop -f "%g")
	import -window root -crop $G ~/$(date "+%Y-%m-%d_%H-%M-%S")_slop_scrot.png
}
# █▓▒░ record video
function vid_area() {
	read -r X Y W H G ID < <(slop -f "%x %y %w %h %g %i")
	ffmpeg -f x11grab -s "$W"x"$H" -i :0.0+$X,$Y -f alsa -i pulse ~/$(date "+%Y-%m-%d_%H-%M-%S")_slop_vid.webm
}
# █▓▒░ hack time
function gitforge() {
	[ ! -d .git ] && echo "not a git repo" && return
	gitauthor=`git config user.name`
	printf "author ($gitauthor): "
	read -r author
	author=${author:=$gitauthor}
	gitemail=`git config user.email`
	printf "email ($gitemail):"
	read -r email
	email=${email:=$gitemail}
	now=`date -Is`
	printf "date ($now):"
	read -r date
	date=${date:=$now}
	echo "\nhacking time as: $author <$email> $date\n"
	export GIT_AUTHOR_DATE=$date
	export GIT_AUTHOR_EMAIL=$email
	export GIT_AUTHOR_NAME=$author
	export GIT_COMMITTER_DATE=$date
	export GIT_COMMITTER_EMAIL=$email
	export GIT_COMMITTER_NAME=$author
	[ ! "$1" ] && git commit || git commit -S$1
	unset GIT_AUTHOR_DATE
	unset GIT_AUTHOR_EMAIL
	unset GIT_AUTHOR_NAME
	unset GIT_COMMITTER_DATE
	unset GIT_COMMITTER_EMAIL
	unset GIT_COMMITTER_NAME
}

# █▓▒░ lolcat banner
lolbanner ()
{
    echo
    figlet -f ~/.local/share/fonts/3d.flf $* | lolcat
    echo
}
#function greynoise() {
#	IP="${1:-/dev/stdin}"
#	[[ "$IP" =~ "stdin" ]] && read IP < "$IP"
#	[[ "$IP" =~ "([0-9]{1,3}[\.]){3}[0-9]{1,3}" ]] || IP=`dig +short ${IP}`
#	curl -sX GET "https://api.greynoise.io/v2/noise/context/${IP}" -H "Accept: application/json" -H "key: ${GREY_TOKEN}"
#}
#function dnsdumpster() {
#	TMP=`mktemp dnsdumpXXX`
#	DNS="${1:-/dev/stdin}"
#	cat << EOF > $TMP
##!env python
#from dnsdumpster.DNSDumpsterAPI import DNSDumpsterAPI
#domain = '$DNS'
#
#res = DNSDumpsterAPI().search(domain)
#
#print("\n╓───── domain: \n╙────────────────────────────────────── ─ ─")
#print(res['domain'])
#
#print("\n╓───── dns servers: \n╙────────────────────────────────────── ─ ─")
#for entry in res['dns_records']['dns']:
#    print(("{domain} ({ip})\n   {as} {provider} {country}".format(**entry)))
#
#print("\n╓───── mx records: \n╙────────────────────────────────────── ─ ─")
#for entry in res['dns_records']['mx']:
#    print(("{domain} ({ip})\n   {as} {provider} {country}".format(**entry)))
#
#print("\n╓───── host records: \n╙────────────────────────────────────── ─ ─")
#for entry in res['dns_records']['host']:
#    if entry['reverse_dns']:
#        print(("{domain} ({reverse_dns}) ({ip})\n   {as} {provider} {country}".format(**entry)))
#    else:
#        print(("{domain} ({ip})\n   {as} {provider} {country}".format(**entry)))
#
#print("\n╓───── txt records: \n╙────────────────────────────────────── ─ ─")
#for entry in res['dns_records']['txt']:
#    print(entry)
#EOF
#	chmod +x $TMP && python $TMP && rm $TMP
#}
# i hate this
alias x="while :; do startx; done"
