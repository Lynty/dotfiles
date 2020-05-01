log_file=~/install_progress_log.txt

sudo yum install -y zsh
if type -p zsh > /dev/null; then
    echo "zsh installed" >> $log_file
else
    echo "zsh failed to install" >> $log_file
fi

sudo yum install -y vim
if type -p vim > /dev/null; then
    echo "Vim installed" >> $log_file
else
    echo "Vim failed to install" >> $log_file
fi

sudo yum install -y curl
if type -p curl > /dev/null; then
    echo "curl installed" >> $log_file
else
    echo "crul failed to install" >> $log_file
fi

sudo yum install -y epel-release.noarch the_silver_searcher
if type -p ag > /dev/null; then
    echo "Silver searcher installed" >> $log_file
else
    echo "Silver searcher failed to install" >> $log_file
fi

sudo yum install -y tmux
if type -p tmux > /dev/null; then
    echo "tmux installed" >> $log_file
else
    echo "tmux failed to install" >> $log_file
fi

sudo yum install -y python-pip
if type -p pip > /dev/null; then
    echo "pip installed" >> $log_file
else
    echo "pip failed to install" >> $log_file
fi

pip install virtualenvwrapper
if pip freeze | grep virtualenvwrapper > /dev/null; then
    echo "virtualenvwrapper installed" >> $log_file
else
    echo "virtualenvwrapper failed to install" >> $log_file
fi

#==============
# Give the user a summary of what has been installed
#==============
echo -e "\n====== Summary ======\n"
cat $log_file
echo
rm $log_file
