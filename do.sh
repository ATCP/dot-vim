##sudo yum install -y build-essential autoconf automake libxmu-dev
#sudo apt-get install -y build-essential autoconf automake libxmu-dev
#
##sudo yum update -y
#sudo apt-get -y update
##sudo yum install -y vim htop
#sudo apt-get -y install vim htop wget git curl
##sudo yum install -y libevent libevent-devel libevent-headers
##sudo yum install -y ncurses-devel
apt-get -y install libevent-dev
apt-get -y install libncurses-dev


cp -r .vim/ ~/ 
cp -r .vimrc ~/
cp -r .tmux.conf ~/
cp -r .bash_profile ~/

apt-get -y install ctags
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
git clone https://github.com/tmux-plugins/tmux-sensible ~/.tmux/plugins/tmux-sensible
git clone https://github.com/tmux-plugins/tmux-cpu ~/.tmux/plugins/tmux-cpu
git clone https://github.com/tmux-plugins/tmux-pain-control ~/.tmux/plugins/tmux-pain-control
git clone https://github.com/nhdaly/tmux-better-mouse-mode ~/.tmux/nhdaly/tmux-better-mouse-mode

cd /usr/local/src
curl -L https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz -o tmux-2.3.tar.gz
tar -xvzf tmux-2.3.tar.gz
cd tmux-2.3
./configure && sudo make
make install
#sudo apt-get -y install vnc4server ubuntu-desktop
#sudo apt-get -y install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal

#mkdir ~/.vnc/
#cp xstartup ~/.vnc/xstartup
