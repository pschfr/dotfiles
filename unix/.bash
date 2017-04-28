# Useful aliases
alias gp="grep -rn --color='always'"
alias ls="ls -lAh"

# Jekyll-related aliases
alias jc="jekyll clean"
alias jb="jekyll build"
alias jd="jekyll draft"
alias jp="jekyll post"
alias jpage="jekyll page"
alias jpb="jekyll publish"
alias ju="jekyll unpublish"
alias jn="jekyll new"
alias js="jekyll serve --drafts"
alias jl="jekyll liveserve --drafts"

# NPM aliases
alias ninit="npm init"
alias ni="npm install"
alias nu="npm uninstall"
alias nl="npm list"
alias nb="npm build"
alias ns="npm start"
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
alias hc="harp compile"

# System aliases
alias update="sudo apt-get update && sudo apt-get upgrade -y"
alias fixrotate="xrandr -o normal"
alias gp="grep -rn"

# My personal scripts
alias status="/home/paul/Dropbox/Work/status/status.sh -d"
alias light="/home/paul/Dropbox/Work/lights/lights.py"
alias style="/home/paul/Dropbox/Work/stylish/new.sh"
alias script="/home/paul/Dropbox/Work/tampermonkey/new.sh"

# weather and moon aliases
alias wttr="curl wttr.in/pittsburgh"
alias moon="curl wttr.in/moon"

# SSH aliases
alias sshdev="ssh paulmake@paulmakesthe.net -p18765 -i /home/paul/.ssh/siteground.pub"

# wuzz, an interactive tool for HTTP inspection
alias wuzz="sudo docker run -it nevon/wuzz"

################################################################################

# Small bash functions too add, subtract, multiply, and divide
add() { echo "scale=5;$1+$2" | bc }
subtract() { echo "scale=5;$1-$2" | bc }
multiply() { echo "scale=5;$1*$2" | bc }
divide() { echo "scale=5;$1/$2" | bc }

# Opens the GitHub repo in the web browser
github() {
	if [ ! -d .git ] ;
		echo "ERROR: This isnt a git directory"
		return false
	fi
	git_url=`git config --get remote.origin.url`
	if [[ $git_url != https://github* ]] ;
		echo "ERROR: Remote origin is not on GitHub"
		return false
	fi
	url=${git_url%.git}
	xdg-open $url
}

################################################################################

# thefuck - https://github.com/nvbn/thefuck
eval $(thefuck --alias)
alias fuck-it='export THEFUCK_REQUIRE_CONFIRMATION=False; fuck; export THEFUCK_REQUIRE_CONFIRMATION=True'
