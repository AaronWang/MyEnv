# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.mint/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME"/.oh-my-zsh"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="powerline"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#
# plugins=(git zsh-syntax-highlighting zsh-autosuggestions autojump extract rand-quote vi-mode colored-man-pages sudo catimg)
plugins=(git zsh-syntax-highlighting zsh-autosuggestions autojump extract vi-mode colored-man-pages sudo autoenv)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# if fzf.zsh is installed, source it
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# alias vim='gvim'
# alias vi='gvim'
#
# alias vim='open -a macvim'
# alias vi='open -a macvim'
#
alias vim='code'
alias vi='code'

alias ra='ranger'
alias install='brew install'
alias update='brew update'
alias upgrade='brew upgrade'
alias uninstall='brew uninstall'
alias remove='brew remove'
alias services='brew services' # must install services first by 'brew tap homebrew/services'
alias o='open'
alias vs='code'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias h='history'
alias cat='ccat'
alias co='gh copilot explain'
# some alias like lsa,ll,ls were defined in ~/.oh-my-zsh/lib/directories.zsh
#
# [[ -s $(brew --prefix)/etc/autojump.bash ]] && . $(brew --prefix)/etc/autojump.bash
# alias j='autojump' # j is function defined in .autojump/share/autojump/autojump.zsh

#set jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# stop pop up warning message when use zsh
ZSH_DISABLE_COMPFIX=true

# 配置 powerline status,先git clone powerline 到/usr/local/
# powerline 依赖python 的包 powerline-status ， pip install powerline-status
# 安装不成功，pip install --upgrade powerline-status  python版本升级，需要更新powerline-status包
export PATH=/usr/local/powerline/scripts:$PATH
. /usr/local/powerline/powerline/bindings/zsh/powerline.zsh

TERM=xterm
export TERM

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# start quote and cowsay
# quote|cowsay

# set flutter Path
export PATH="$PATH:$HOME/Library/flutter/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# stop generate __pycache__ folder
export PYTHONDONTWRITEBYTECODE=1

#Android SDK Location
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
#Add the Android SDK command-line directories to PATH
# avdmanager, sdkmanager
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
# adb, logcat
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
# emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

# Load Angular CLI autocompletion. is for angular <=14 version
# source <(ng completion script)

export GEM_HOME="$HOME/.gem"

# node's configure option, increate default memory limit to 4096MB
export NODE_OPTIONS="--max-old-space-size=4096"
# nvm start-----------------
# place this after nvm initialization!
# call nvm use automatically whenever you enter a directory that contains an .nvmrc file with a string telling nvm which node to use:
# https://github.com/nvm-sh/nvm#zsh
autoload -U add-zsh-hook

load-nvmrc() {
    local nvmrc_path
    nvmrc_path="$(nvm_find_nvmrc)"
    # echo "nvmrc_path: $nvmrc_path"
    if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version
        nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
        # echo "nvmrc_node_version: $nvmrc_node_version"
        if [ "$nvmrc_node_version" = "N/A" ]; then
            nvm install
            return
        elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
            nvm use
            return
        fi
    elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
        echo "Reverting to nvm default version"
        nvm use default
        return
    fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
# nvm end-----------------

# setup CATELINA_HOME after install tomcat
export CATALINA_HOME="/usr/local/Cellar/tomcat/10.1.18/libexec"
# export DOCKER_HOST="unix://$HOME/.colima/docker.sock"
export PATH="/usr/local/opt/ruby/bin:$PATH"
