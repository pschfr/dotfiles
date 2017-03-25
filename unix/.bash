# Commands I always forget
export GREP_OPTIONS='--color=always'
grep --exclude-dir={directory,another} -Rni 'string_goes_here'

# Useful aliases
# Jekyll-related aliases
alias jc="jekyll clean"
alias jb="jekyll build"
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
alias status="/home/paul/Dropbox/Work/status/status.sh"
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
