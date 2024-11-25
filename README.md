# MyEnv

## setup my zsh, vim environments

```zsh
chsh -s /bin/zsh
git clone https://github.com/AaronWang/MyEnv.git ~/MyEnv

ln -s ~/MyEnv/zsh/.zshrc ~/.zshrc

mkdir ~/.vim
ln -s ~/MyEnv/vim/.vimMac ~/.vimrc
ln -s ~/MyEnv/vim/.vsvimrcMac ~/.vsvimrc
ln -s ~/MyEnv/vim/.ideavimrc ~/.ideavimrc
ln -s ~/MyEnv/vim/autoload ~/.vim/autoload
ln -s ~/MyEnv/vim/vimPlugins ~/.vim/vimPlugins
vim +PlugUpdate +qall

```
