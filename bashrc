# export common configuration
source ~/.bash/common.sh

# export aliases
source ~/.shell/aliases.sh

# Allow local customization in the ~/.shell_local file
if [ -f ~/.shell_local ]; then
    source ~/.shell_local
fi

# Allow local customization in the ~/.bashrc_local file
if [ -f ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi

export PATH=~/.local/bin:"$PATH"
