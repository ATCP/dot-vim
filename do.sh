sudo yum install -y build-essential autoconf automake libxmu-dev
#sudo apt-install install -y build-essential autoconf automake libxmu-dev

sudo yum update -y
#sudo apt-get -y update
sudo yum install -y vim htop
#sudo apt-get -y install vim htop
sudo yum install -y libevent libevent-devel libevent-headers
sudo yum install -y ncurses-devel

cp -r .vim/ ~/ 
cp -r .vimrc ~/
cp -r .tmux.conf ~/
cp -r .bash_profile ~/

#sudo apt-get -y install ctags
sudo yum -y install ctags
sudo git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sudo git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
sudo git clone https://github.com/tmux-plugins/tmux-sensible ~/.tmux/plugins/tmux-sensible
sudo git clone https://github.com/tmux-plugins/tmux-cpu ~/.tmux/plugins/tmux-cpu
sudo git clone https://github.com/tmux-plugins/tmux-pain-control ~/.tmux/plugins/tmux-pain-control
sudo git clone https://github.com/nhdaly/tmux-better-mouse-mode ~/.tmux/nhdaly/tmux-better-mouse-mode

cd /usr/local/src
sudo curl -L https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz -o tmux-2.3.tar.gz
sudo tar -xvzf tmux-2.3.tar.gz
cd tmux-2.3
sudo ./configure && sudo make
sudo make install
#sudo apt-get -y install vnc4server ubuntu-desktop
#sudo apt-get -y install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal

#mkdir ~/.vnc/
#cp xstartup ~/.vnc/xstartup
