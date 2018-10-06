sudo yum install -y build-essential autoconf automake libxmu-dev
#sudo apt-get install -y build-essential autoconf automake libxmu-dev

sudo yum update -y
#sudo apt-get -y update
sudo yum install -y vim htop
#sudo apt-get -y install vim htop
sudo yum install -y libevent libevent-devel libevent-headers
sudo yum install -y ncurses-devel
sudo yum install -y gcc kernel-devel make
#sudo apt-get -y install libevent-dev
#sudo apt-get -y install libncurses-dev


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

curl -OL https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz
tar -xvzf libevent-2.0.22-stable.tar.gz
cd libevent-2.0.22-stable
./configure --prefix=/usr/local
make
sudo make install
cd ..

# DOWNLOAD SOURCES FOR TMUX AND MAKE AND INSTALL
curl -OL https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz
tar -xvzf tmux-2.3.tar.gz
cd tmux-2.3
LDFLAGS="-L/usr/local/lib -Wl,-rpath=/usr/local/lib" ./configure --prefix=/usr/local
make
sudo make install
cd ..

# pkill tmux
# close your terminal window (flushes cached tmux executable)
# open new shell and check tmux version
tmux -V
#sudo apt-get -y install vnc4server ubuntu-desktop
#sudo apt-get -y install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal

#mkdir ~/.vnc/
#cp xstartup ~/.vnc/xstartup
