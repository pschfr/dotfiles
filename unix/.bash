#!/usr/bin/env bash
# Enable aliases to be sudo'ed
alias sudo="sudo "

# Jekyll-related aliases
alias jc="bundle exec jekyll clean"
alias jb="bundle exec jekyll build"
alias jd="bundle exec jekyll draft"
alias jp="bundle exec jekyll post"
alias jpage="bundle exec jekyll page"
alias jpb="bundle exec jekyll publish"
alias ju="bundle exec jekyll unpublish"
alias jn="bundle exec jekyll new"
alias js="bundle exec jekyll serve --drafts"
alias jps="JEKYLL_ENV=production bundle exec jekyll serve"
alias jl="bundle exec jekyll serve --drafts --livereload"
alias jpl="JEKYLL_ENV=production bundle exec jekyll serve --livereload"

# NPM aliases
alias ninit="npm init"
alias ni="npm install"
alias nig="sudo npm install --global"
alias nu="npm uninstall"
alias nl="npm list"
alias nb="npm build"
alias ns="npm start"
alias nsv="npm serve"
alias nu="npm update"

# Yarn aliases
alias yinit="yarn init"
alias ya="yarn add"
alias yu="yarn upgrade"
alias yr="yarn remove"
alias yi="yarn install"

# Harp aliases
alias hinit="harp init"
alias hs="harp server"
alias hps="NODE_ENV=production harp server"
alias hc="harp compile"

# Middleman aliases
alias m="bundle exec middleman server"
alias mb="middleman build"
alias minit="middleman init"

# System aliases
alias i="sudo apt install -y"
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt clean"
alias restart="sudo service apache2 restart && echo 'apache2 service restarted.'"
alias fixrotate="xrandr -o normal"
alias gp="grep -rn"
alias c="clear"
alias dl="youtube-dl"
alias ff="/home/paul/firefox/firefox &"
alias ch="google-chrome &"
alias st="git status"
alias mc="/home/paul/Documents/minecraft-launcher-2.1.1431/minecraft-launcher.sh"

# My personal scripts
alias status="/home/paul/Dropbox/Work/status/status.sh -d"
alias light="/home/paul/Dropbox/Work/lights/lights.py"
alias lights="/home/paul/Dropbox/Work/lights/lights.py"
alias style="/home/paul/Dropbox/Work/stylish/new.sh"
alias script="/home/paul/Dropbox/Work/tampermonkey/new.sh"

# weather and moon aliases
alias wttr="curl wttr.in/pittsburgh"
alias moon="curl wttr.in/moon"

# SSH aliases
alias sshdev="ssh paulmake@paulmakesthe.net -p18765 -i /home/paul/.ssh/siteground.pub"

# wuzz, an interactive tool for HTTP inspection
alias wuzz="sudo docker run -it nevon/wuzz"

# pywal generates a color theme from an image in Python
alias wall="wal -i '/home/paul/Dropbox/Wallpapers/'"

# Add an "alert" alias for long running commands.  Use like so: sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

################################################################################

# Import colorscheme from 'pywal' asynchronously
# https://github.com/dylanaraps/pywal/wiki/Getting-Started#applying-the-theme-to-new-terminals
# (cat /home/paul/.cache/wal/sequences &)

# Exports pywal colors into the shell
# https://github.com/dylanaraps/pywal/wiki/Customization#shell-variables
# . "/home/paul/.cache/wal/colors.sh"

################################################################################

# Small bash functions to add, subtract, multiply, and divide
add() { echo "scale=5;$1+$2" | bc; }
subtract() { echo "scale=5;$1-$2" | bc; }
multiply() { echo "scale=5;$1*$2" | bc; }
divide() { echo "scale=5;$1/$2" | bc; }

# Opens the GitHub repo in the web browser
github() {
	if [ ! -d .git ] ; then
		echo "ERROR: This isn't a git directory!"
		return 1
	fi
	git_url=`git config --get remote.origin.url`
	if [[ $git_url == *"github"* ]] ; then
		if [[ $git_url != https://github* ]] ; then
			echo "WARNING: this is a SSH repo at ${git_url}. Attempting conversion..."
			git_url=${git_url/git@/''}
			git_url=${git_url/:/'/'}
			git_url="https://${git_url}"
		fi
	else
		echo "ERROR: Remote origin is not on GitHub!"
		return 1
	fi
	url=${git_url%.git}
	xdg-open $url
}

# Makes cloning from GitHub quicker, see https://gist.github.com/zenorocha/75f9bc7b5bb79653989561bd8d4d0275
clone() {
	git clone https://github.com/$1/$2.git
}

# Creates a directory, then enters it
mcd () {
	mkdir -p $1
	cd $1 || exit
}

# https://github.com/xvoland/Extract
extract() {
	if [ -z "$1" ]; then
		# display usage if no parameters given
		echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
	else
		if [ -f $1 ] ; then
			# NAME=${1%.*}
			# mkdir $NAME && cd $NAME
			case $1 in
				*.tar.bz2)   tar xvjf ./$1    ;;
				*.tar.gz)    tar xvzf ./$1    ;;
				*.tar.xz)    tar xvJf ./$1    ;;
				*.lzma)      unlzma ./$1      ;;
				*.bz2)       bunzip2 ./$1     ;;
				*.rar)       unrar x -ad ./$1 ;;
				*.gz)        gunzip ./$1      ;;
				*.tar)       tar xvf ./$1     ;;
				*.tbz2)      tar xvjf ./$1    ;;
				*.tgz)       tar xvzf ./$1    ;;
				*.zip)       unzip ./$1       ;;
				*.Z)         uncompress ./$1  ;;
				*.7z)        7z x ./$1        ;;
				*.xz)        unxz ./$1        ;;
				*.exe)       cabextract ./$1  ;;
				*)           echo "extract: '$1' - unknown archive method" ;;
			esac
		else
			echo "$1 - file does not exist"
		fi
	fi
}

# Fixes Zsh history errors, from https://shapeshed.com/zsh-corrupt-history-file/#making-it-a-script
fix_zsh() {
	mv /home/paul/.zsh_history /home/paul/.zsh_history_bad
	strings /home/paul/.zsh_history_bad > /home/paul/.zsh_history
	fc -R /home/paul/.zsh_history
	rm /home/paul/.zsh_history_bad
}
