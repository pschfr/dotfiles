# Commands I always forget
export GREP_OPTIONS='--color=always'
grep --exclude-dir={directory,another} -Rni 'string_goes_here'

# Useful aliases
# Jekyll-related aliases
alias jc="jekyll clean"
alias jb="jekyll build"
alias js="jekyll serve"
alias jl="jekyll liveserve"

# NPM aliases
alias ninit="npm init"
alias ni="npm install"
alias nu="npm uninstall"
alias nl="npm list"
alias nb="npm build"
alias ns="npm start"
alias nu="npm update"

# System aliases
alias update="sudo apt-get update && sudo apt-get upgrade"
alias fixrotate="xrandr -o normal"

# My personal scripts
alias status="/home/paul/Dropbox/Work/status/status.sh"
alias lights="/home/paul/Dropbox/Work/lights/lights.py"

# weather and moon aliases
alias wttr="curl wttr.in/pittsburgh"
alias moon="curl wttr.in/moon"

# SSH aliases
alias sshdev="ssh paulmake@paulmakesthe.net -p18765 -i /home/paul/.ssh/siteground.pub"
