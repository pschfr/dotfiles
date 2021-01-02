# dotfiles
A place for me to store my dotfiles, for example: sublime settings, .gitconfigs, bash and zsh configuration.

## Settings
Contains tweaked settings for [VS Code](https://github.com/Microsoft/vscode), [Sublime](https://www.sublimetext.com/3), and [Hyper](https://github.com/zeit/hyper).

## Unix
`bash` contains commands I often forget and useful aliases, `zshrc` is [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)-specific settings, `gitconfig` is obviously git-specific settings, and lastly `warprc` is for a `zsh` plugin that quickly change directories.

Feel free to fork this repo to use it for yourself. Or don't.

Be sure to check out [`status`](https://github.com/pschfr/status), a script for checking the status of multiple repositories at once, and [`conky`](https://github.com/pschfr/conky), my theme for the system-information program for Linux systems.


## Things to Install First and Other Setup Steps
1. Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).
2. Replace `.zshrc`, `.warprc`, `.gitconfig`, and `.npm-init.js` in home directory with their respective files. `cp dotfiles/unix/{.zshrc,.warprc,.gitconfig,.npm-init.js} ~/`.
3. Replace settings for VS Code, Hyper, and Sublime.
4. Install desired programs from [`install.md`](docs/install.md) and plugins from [`vscode-plugins.md`](docs/vscode-plugins.md).
