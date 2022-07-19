export DOTFILES=$HOME/dotfiles
# Path to your oh-my-zsh installation.
export ZSH="$DOTFILES/oh-my-zsh"
export PATH=$PATH:~/go/bin

#export NIX_IGNORE_SYMLINK_STORE=1 #https://github.com/NixOS/nix/issues/2925
#. $HOME/.nix-profile/etc/profile.d/nix.sh

# Check out your favorites ~/.zsh_favlist and find new favorites with ~/.oh-my-zsh/tools/theme_chooser.sh
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  colored-man-pages
  zsh-autosuggestions
)

# kubectl rprompt stuff
autoload -U colors; colors
source /opt/homebrew/etc/zsh-kubectl-prompt/kubectl.zsh
RPROMPT='%{$FG[242]%}kx:$ZSH_KUBECTL_CONTEXT%{$reset_color%}'

source $ZSH/plugins/z/z.sh
source $ZSH/oh-my-zsh.sh

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

##### ALIASES #####
# Kubernetes
alias kg="kubectl get"
alias kgpan="kubectl get po --all-namespaces"
alias kgdan="kubectl get deploy --all-namespaces"
alias kgsan="kubectl get svc --all-namespaces"
alias kdl="kubectl delete"
alias kc="kubectl config"
alias kcc="kubectl create"
alias kcgc="kubectl config get-contexts"
alias kcuc="kubectl config use-context"
alias kcdc="kubectl config delete-context"
alias kdb="kubectl describe"
alias ke="kubectl explain"
alias ka="kubectl apply -f"
alias kx="kubectx"
# Docker
alias dlf="docker logs -f"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dce="docker-compose exec"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias di="docker images"
# Terraform
alias tf="terraform"
alias tfi="terraform init"
alias tfyolo="terraform apply -auto-approve"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfd="terraform destroy"
alias tfc="terraform console"
alias tfv="terraform version"
alias tfu="terraform-use"
# GCloud
alias gccl="gcloud config configurations list"
alias gcca="gcloud config configurations activate"
alias gccd="gcloud config configurations delete"
alias gcal="gcloud auth list"
alias gal="gcloud auth login"
alias gaal="gcloud auth application-default login"
# Git
alias gs="git status"
alias gg="git commit -am"
# Misc
alias cwd="pwd | pbcopy"
alias ls="ls -thorG"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

# Enable Terraform runs with assumerole account
export AWS_SDK_LOAD_CONFIG=1

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C $HOME/bin/vault vault

function terraform-use {
  vsn=$1
  pkg="terraform_${vsn}_darwin_amd64.zip"
  url="https://releases.hashicorp.com/terraform/${vsn}/${pkg}"
  tf="$(which terraform || echo /usr/local/bin/terraform)"
  if [ -e "${tf}-${vsn}" ]; then
    ln -Fs "${tf}-${vsn}" "${tf}"
  elif curl --head --fail "${url}" 2> /dev/null; then
    wget -O "/tmp/${pkg}" "${url}"
    (
      cd /tmp/
      unzip -o "/tmp/${pkg}"
      rm "/tmp/${pkg}"
      mv terraform "${tf}-${vsn}"
    )
    ln -Fs "${tf}-${vsn}" "${tf}"
  else
    echo "ERROR \`${url}\` not found"
    return 1
  fi
  terraform -version
}

export GO111MODULE=on

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lynnux/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lynnux/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lynnux/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lynnux/google-cloud-sdk/completion.zsh.inc'; fi

# enable color support of ls and also add handy aliases (for ubuntu)
  if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      alias dir='dir --color=auto'
      alias vdir='vdir --color=auto'
      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
  fi
