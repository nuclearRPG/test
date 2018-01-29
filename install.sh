# update ubuntu
sudo apt-get update
sudo apt-get -y upgrade

# install tools for ubuntu desktop, not necessary for ubuntu server
sudo apt-get -y install tmux git vim curl

# for remote git repos, not just github
mkdir -p ~/github

# update /etc/hosts for make accessing some website easier
git clone https://coding.net/u/scaffrey/p/hosts/git ~/github/hosts
cat /etc/hosts ~/github/hosts/hosts-files/hosts | sudo tee /etc/hosts
# or, sudo chmod 666 /etc/hosts; cat ~/github/hosts/hosts-files/hosts >> /etc/hosts; sudo chmod 644 /etc/hosts
# or, sudo vim -c 'e /etc/hosts' -c '%' -c 'r ~/github/hosts/hosts-files/hosts' -c 'wq'
# for firefox, install decentraleyes add-on for accessing google scripts,
# website like stackoverflow could be open faster
# using a vpn if we could 

# dotfiles
git clone https://github.com/nuclearRPG/dotfiles ~/github/dotfiles
ln -s ~/github/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/github/dotfiles/js/.eslintrc.json ~/.eslintrc.json
ln -s ~/github/dotfiles/tmux/.tmux.conf ~/.tmux.conf

# vim plugins, use vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'q' 

# nvm and node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
source ~/.bashrc
nvm install node

# cnpm, taobao's npm snapshot
npm i -g npm
npm i -g cnpm --registry=https://registry.npm.taobao.org

# complete vim plugin youcompleteme
sudo apt-get -y install python python3 python-dev python3-dev build-essential cmake
cd ~/.vim/bundle/YouCompleteMe
./install.py --js-completer
cd ~
# eslint, csslint, and eslint-plugin-react
cnpm i -g eslint csslint eslint-plugin-react

# tidy-html5
git clone https://github.com/htacg/tidy-html5 ~/github/tidy-html5
cd ~/github/tidy-html5/build/cmake
cmake ../.. -DCMAKE_BUILD_TYPE=Release
make
sudo make install
cd ~
