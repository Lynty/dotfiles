# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH:$HOME/Library/Python/3.7/bin:$HOME/env/pylatex/bin
export GOPATH=$HOME/go
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#export NIX_IGNORE_SYMLINK_STORE=1 #https://github.com/NixOS/nix/issues/2925
#. /Users/ldong/.nix-profile/etc/profile.d/nix.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gianu"

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
  zsh-syntax-highlighting
  colored-man-pages
  osx
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Kubernetes
alias kg="kubectl get"
alias kdl="kubectl delete"
alias kc="kubectl create -f"
alias kdb="kubectl describe"
alias ke="kubectl explain"
alias kcc="kubectl create"

# Terraform
alias tf="terraform" 

# Linux
alias cpwd="pwd | pbcopy"

if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

source ~/.oh-my-zsh/plugins/z/z.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ldong/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ldong/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ldong/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ldong/google-cloud-sdk/completion.zsh.inc'; fi

# Enable Terraform runs with NWI AWS assumerole sandbox account
export AWS_SDK_LOAD_CONFIG=1

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Users/ldong/bin/vault vault
