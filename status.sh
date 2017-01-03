echo "\n\033[34m\033[1mPaul's Git Status Script v1.0\033[0m\n"
echo "Enter an absolute directory location, starting with /"
echo "Press enter for default ($HOME/Dropbox/Work):"
read ROOT_DIR # absolute location of directory containing multiple git repos

if [ -z "$ROOT_DIR" ]; then # if input is empty, use default
	cd $HOME/Dropbox/Work
else
	cd "$ROOT_DIR"
fi

REPOS=0 # init counters
UPDATED=0
MODIFIED=0

for DIR in */ # loops through each directory
do 
	cd "$DIR"
	if [ -d ".git" ]; then # if .git folder exists, check status
		COMMITS=`git rev-list --all --count` # returns number of commits
		echo "\n\033[34m\033[1m${DIR%?} \033[1;30m${COMMITS} commits\033[0m"

		if git status -s | read status; then # if modified, print status, otherwise up to date
			git status -s
			MODIFIED=$((MODIFIED + 1))
		else
			echo 'Up to date'
			UPDATED=$((UPDATED + 1))
		fi

		REPOS=$((REPOS + 1))
	fi

	if [ -z "$ROOT_DIR" ]; then
		cd $HOME/Dropbox/Work
	else
		cd "$ROOT_DIR"
	fi
done

echo "\n\033[34m\033[1m${REPOS}\033[0m repositories, \033[32m\033[1m${UPDATED}\033[0m up to date, and \033[31m\033[1m${MODIFIED}\033[0m with changes.\n"

# TODO:
# Tab completion
# look inside subdirectories as well
# alias?
