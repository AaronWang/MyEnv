# MyEnv

## install powerline font

```zsh
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
sh install.sh
cd ..
rm -rf fonts
```

## powerline bar

```zsh
git clone https://github.com/powerline/powerline.git /usr/local/powerline
```

## install nerd font

```zsh
wget -P ~/ https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
mkdir -p ~/.local/share/fonts
unzip ~/Hack.zip -d ~/.local/share/fonts
rm  ~/Hack.zip
fc-cache -fv
fc-list | grep "Hack Nerd Font"
```

## install .oh_my_zsh and plugins

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

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
