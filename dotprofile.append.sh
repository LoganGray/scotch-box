#anything needed to be added to .profile upon vagrant creation should be in here
#this is so that this file can be appended to >> /home/vagrant/.profile
#composer to path
#echo "Adding composer vendor folders to path"
export PATH=$PATH:~/.composer/vendor/bin

# Uncomment for a nice solarized prompt (doesn't seem to work on windows)
#sudo echo "export PS1='\[\033[38;5;198m\]\u\[$(tput sgr0)\]\[\033[38;5;6m\]@\[$(tput sgr0)\]\[\033[38;5;172m\]\h\[$(tput sgr0)\]\[\033[38;5;1m\]:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \n\[$(tput sgr0)\]\[\033[38;5;172m\]\\$ \[$(tput sgr0)\]'" >> /home/vagrant/.profile
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

#move to web dir
cd /var/www/public/


