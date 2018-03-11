sudo yum install -y build-essential autoconf automake libxmu-dev
#sudo apt-install install -y build-essential autoconf automake libxmu-dev

sudo yum update -y
#sudo apt-get -y update
sudo yum install -y vim htop
#sudo apt-get -y install vim htop

cp -r .vim/ ~/ 
cp -r .vimrc ~/
cp -r .tmux.conf ~/
cp -r .bash_profile ~/

#sudo apt-get -y install ctags
sudo yum -y install ctags

#sudo apt-get -y install vnc4server ubuntu-desktop
#sudo apt-get -y install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal

#mkdir ~/.vnc/
#cp xstartup ~/.vnc/xstartup
