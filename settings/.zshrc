# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
   # Linux specific settings
   export ZSH="/home/zshen/.oh-my-zsh"
   eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [[ "$OSTYPE" == "darwin"* ]]; then
   # macOS specific settings
   export ZSH="/Users/zshen/.oh-my-zsh"
fi


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 30

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=( 
  git 
  autojump 
  zsh-syntax-highlighting zsh-autosuggestions 
  sublime sublime-merge 
  vi-mode 
  docker minikube 
  mvn 
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
fi
export EDITOR='nvim'

# export ARCHFLAGS="-arch x86_64"
# Compilation flags

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"

# vim override
alias vi="nvim"
alias vim="nvim"

# settings file quick access
alias zshrc="nvim ~/.zshrc"
alias szshrc="source ~/.zshrc"
alias zshrcwork="nvim ~/.zshrc_work"
alias vimrc="nvim ~/.config/nvim/"
alias tmuxconf="nvim ~/.tmux.conf"

alias la="exa --long --header --git -a"
alias ls="exa --long --header --git"
alias ls2="exa --tree --level=2"
alias grep="grep --color=auto"

# the following is specifically for docker port listening on m1 mac
# alias dockersethostlisten="socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock"
# alias dockersethostenv="export DOCKER_HOST=http://127.0.0.1:2375"

alias mvn="mvn-color" # this alias relies on mvn plugin for omz
# mvn
alias mvncidb="mvn clean install docker:build" # this alias relies on mvn plugin for omz
alias mvncidbr="mvn clean install docker:build docker:run" # this alias relies on mvn plugin for omz

# input file name with specific suffix will open the file in nvim or run command
alias -s html=vi
alias -s rb=vi
alias -s py=vi
alias -s js=vi
alias -s ts=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s bz2='tar -xjvf'
alias -s zip='unzip'

# use theme starship: https://starship.rs/guide/
eval "$(starship init zsh)"

# set java runtime with jenv. make sure you enable javahome plugin to automatically update JAVA_HOME when switch
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Source private configurations
# Source private configurations
if [[ -f $HOME/.zshrc_work ]]; then
    source $HOME/.zshrc_work
else
    echo "Warning: Confidential settings .zshrc_work not found."
fi
