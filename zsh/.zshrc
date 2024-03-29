# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/sbin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/`whoami`/.oh-my-zsh

# set editor
export EDITOR='vim'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="alanpeabody-modified"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git zsh-autosuggestions vi-mode history-substring-search)

source $ZSH/oh-my-zsh.sh
source $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# If a new command line being added to the history list duplicates
# an older one, the older command is removed from the list (even if 
# it is not the previous event).
setopt HIST_IGNORE_ALL_DUPS

# Color to use when highlighting suggestion
# More info: http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=2'

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vi'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
alias ssh='env TERM=xterm-256color ssh'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PYTHONSTARTUP=~/.pythonrc

HISTSIZE=999999
HISTFILESIZE=999999
HISTORY_IGNORE='(git push*master*|git push*dev*)'

alias c='clear'
alias p='python3'
alias p2='python2.7'

#return from virtualenv
alias ret='. ~/.bashrc'

alias ls='ls -ltF --color=auto'
alias ll='ls -alF'
alias la='ls -A'

alias tmuxh='tmux new-session -c "$PWD"\; \
    split-window -v \; \
    select-pane -t 0 \; \
    resize-pane -D 17 \;'

alias tmuxv='tmux new-session -c "$PWD"\; \
    split-window -h \; \
    select-pane -t 0 \;'

alias tmuxf='tmux new-session -c "$PWD"\; \
    split-window -h \; \
    select-pane -t 1 \; \
    split-window -v \; \
    select-pane -t 0 \; \
    split-window -v \; \
    select-pane -t 2 \; \
    select-pane -t 0 \;'

alias tmux4='tmux new-session -c "$PWD"\; \
    split-window -h \; \
    select-pane -t 1 \; \
    split-window -v \; \
    select-pane -t 0 \; \
    split-window -v \; \
    select-pane -t 2 \; \
    resize-pane -D 17 \; \
    select-pane -t 0 \; \
    resize-pane -D 17 \;'

alias se='history | grep -v se | grep $1'
alias nvi='nvim'
