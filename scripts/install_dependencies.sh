#Install vim and pathogen
sudo apt install vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

#Install tmux
sudo apt install tmux

#Install ruby and rbenv
sudo apt install ruby-full
sudo apt install rbenv

#install nodejs
sudo apt install nodejs

#Install fd-find and z
sudo apt install fd-find
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/.z

#Install doxygen
sudo apt-add-repository universe
sudo apt-get update
sudo apt-get install doxygen
