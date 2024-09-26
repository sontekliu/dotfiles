# If you come from bash you might have to change your $PATH.
export M2_HOME="$HOME/workspace/apache-maven-3.5.0"
# export GRADLE_HOME="$HOME/workspace/gradle-4.10"
export GRADLE_HOME="$HOME/workspace/gradle-7.2"
export GRADLE_USER_HOME="$HOME/workspace/repo"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"
export JAVA_HOME="/Users/sontek/workspace/jdk-17.0.1.jdk/Contents/Home"
export ES_HOME="$HOME/opt/myapp/elasticsearch-7.10.2"
export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib
export KOTLIN_HOME="$HOME/workspace/mysoftware/kotlinc"
export GOROOT="$HOME/go"
export GOPATH="$HOME/workspace/goprojects"

export FLUTTER_HOME="$HOME/workspace/flutter"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export POSTMAN_DISABLE_GPU=true

export PATH=$POSTMAN_DISABLE_GPU:$FLUTTER_HOME/bin:$GOROOT/bin:$JAVA_HOME/bin:$GRADLE_HOME/bin:$M2_HOME/bin:$KOTLIN_HOME/bin:$ES_HOME/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin

# Path to your oh-my-zsh installation.
export ZSH=/Users/sontek/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  vi-mode
  # extract
  # autojump
  # colored-man-pages
  # sudo
  # z
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
set -o vi
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# alias vi='nvim'
alias vim='nvim'
alias python='/usr/local/bin/python3'
alias pip='/usr/local/bin/pip3'
alias blj='/Users/sontek/.ssh/login.sh'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function proxy_off(){
    unset http_proxy
    unset https_proxy
    echo -e "已关闭代理"
}

function proxy_on() {
    # export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="socks5://127.0.0.1:1080"
    export https_proxy=$http_proxy
    echo -e "已开启代理"
}

alias lg="lazygit"

export NVM_DIR="/Users/sontek/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export HOMEBREW_GITHUB_API_TOKEN=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
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

