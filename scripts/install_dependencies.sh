#Install vim and pathogen
sudo apt install vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/altercation/vim-colors-solarized.git
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

#Install tmux
sudo apt install tmux -y

#Install fd-find and z
sudo apt install fd-find -y
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z.sh

#Install doxygen
sudo apt-add-repository universe -y
sudo apt-get update -y
sudo apt-get install doxygen -y

#install oh-my-tmux
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f .tmux/.tmux.conf

