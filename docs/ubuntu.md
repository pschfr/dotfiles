# git
`sudo apt install -y git-all`

# curl
`sudo apt install -y curl`

# python
`sudo apt install -y python2.7 python3`

# pip
`sudo apt install -y python-pip`<br>
https://packaging.python.org/installing/

# ruby
`sudo apt install -y ruby ruby-dev`

# java
`sudo apt install -y default-jre`

# apache
`sudo apt install -y apache2`

# mysql
`sudo apt install -y mysql-server`
- Note: use `mysql -h 127.0.0.1 -P 3306 -u root -p` to login to local mysql

# php
`sudo apt install -y php libapache2-mod-php php-mcrypt php-mysql`

# node.js
`curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -`<br>
`sudo apt install -y nodejs`<br>
https://nodejs.org/en/download/package-manager/

# npm
`sudo apt install -y npm`

# gulp
`sudo npm install -g gulp-cli`

# diff-so-fancy
`sudo npm install -g diff-so-fancy`

# gimp
`sudo apt install -y gimp gimp-data gimp-plugin-registry gimp-data-extras`

# vlc
`sudo apt install -y vlc`

# 7zip
`sudo apt install -y p7zip-full p7zip-rar rar unrar zip unzip`

# vscode
https://code.visualstudio.com/download

# filezilla
`sudo apt install -y filezilla`

# dropbox
https://www.dropbox.com/downloading

# gparted
`sudo apt install -y gparted`

# zsh
`sudo apt install -y zsh`<br>
`chsh -s $(which zsh)`<br>
https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH

# oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`<br>
https://github.com/robbyrussell/oh-my-zsh#basic-installation

# guake
`sudo apt install -y guake`

# docky
`sudo apt install -y docky`

# harp.js
`sudo npm install -g harp`

# jekyll
`sudo gem install jekyll bundler`

# yarn
`curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -`<br>
`echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list`<br>
https://yarnpkg.com/en/docs/install

# firefox
`sudo apt install -y firefox`

# chrome
https://www.google.com/chrome/

# fastfetch
https://github.com/fastfetch-cli/fastfetch

# conky
http://packages.ubuntu.com/precise/amd64/conky-all/download

# Arc theme
`sudo apt install -y arc-theme`<br>
https://github.com/horst3180/arc-theme

# Numix
`sudo add-apt-repository ppa:numix/ppa`<br>
`sudo apt update && sudo apt install -y numix-gtk-theme numix-blue-gtk-theme numix-icon-theme`<br>
https://www.gnome-look.org/p/1013541/

---

# Jellyfin 
`curl https://repo.jellyfin.org/install-debuntu.sh | sudo bash`<br>
https://jellyfin.org/docs/general/installation/linux/#repository-automatic
### Allows jellyfin to see external drives
`sudo chgrp -R jellyfin /media/paul/`<br>
`sudo chmod g+rwx /media/paul/`

---

# Fonts

# powerline fonts
`sudo apt install fonts-powerline`

### roboto
https://github.com/google/roboto/releases

### fira code
https://github.com/tonsky/FiraCode/releases<br>
https://github.com/tonsky/FiraCode/wiki

### source code/sans/serif pro
https://github.com/adobe-fonts/source-code-pro/releases<br>
https://github.com/adobe-fonts/source-sans-pro/releases<br>
https://github.com/adobe-fonts/source-serif-pro/releases

### palentino linotype
https://www.linotype.com/57056/palatino-linotype-family.html


---

# Ubuntu 22.04+ specific tweaks

### Resets the `Alt` drag key from `Super` back to `Alt`
`gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Alt>'`<br>
`gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true`<br>
https://askubuntu.com/a/1426306

### Enables click-to-minimize on the dock
`gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'`<br>
https://itsfoss.com/click-to-minimize-ubuntu/

### Re-enables double-click to install .deb files
`sudo apt install gdebi`<br>
https://askubuntu.com/a/1512228

### Proper GNOME extension management program
`sudo apt install gnome-shell-extension-manager`<br>
https://itsfoss.com/extension-manager/
