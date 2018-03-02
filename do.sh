sudo apt install -y build-essential autoconf automake libxmu-dev

sudo apt-get -y update
sudo apt-get -y install vim htop

cp -r .vim/ ~/ 
cp -r .vimrc ~/

sudo apt-get -y install ctags

sudo apt-get -y install vnc4server ubuntu-desktop
sudo apt-get -y install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal

cp xstartup ~/.vnc/xstartup
