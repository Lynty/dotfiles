# dotfiles

### Macbook Pro
- install homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- `./install-scripts/MBP/brew`
- `./install-scripts/create-symlinks.sh`
- install iterm2 and import profile
```
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1
```
- tmux colors
  - red `f67280`
  - blue `355c7d`
  - magenta `6c5b7b`
  - cyan `077b88`

### Ubuntu
- `./install-scripts/Linux/ubuntu-install-pkgs.sh`
- `./install-scripts/create-symlinks.sh`

### CentOS
- `./install-scripts/Linux/centos-install-pkgs.sh`
- `./install-scripts/create-symlinks.sh`

> You may need to run `sudo yum update -y` or `sudo apt-get update && apt-get upgrade` to update your available packages.

# todo
- [x] Gianu theme symlink `~/.oh-my-zsh/themes/gianu.zsh-theme`
- [ ] Set up easy way to install `gcloud` and add to `$PATH`
- [ ] zsh-autosuggestions and zsh-kubectl-prompt for ubuntu
