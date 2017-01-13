# Commands I always forget
export GREP_OPTIONS='--color=always'
grep --exclude-dir={directory,another} -Rni 'string_goes_here'

# Useful aliases
# Jekyll-related aliases
alias jc="jekyll clean"
alias jb="jekyll build"
alias js="jekyll serve"
alias jl="jekyll liveserve"

# System aliases
alias update="sudo apt-get update && sudo apt-get upgrade"
alias fixrotate="xrandr -o normal"

# My personal scripts
alias status="/home/paul/Dropbox/Work/dotfiles/status.sh"
alias lights="/home/paul/Dropbox/Work/lights/lights.py"

# weather and moon aliases
alias wttr="curl wttr.in/pittsburgh"
alias moon="curl wttr.in/moon"
