#!/bin/bash
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# oh-my-zsh
if [[ ! -d $ZSH ]]; then
  echo "Installing Oh My Zsh"
  git clone git://github.com/robbyrussell/oh-my-zsh.git $ZSH
fi

ZSH_THEMES=$ZSH/custom/themes

if [[ ! -d $ZSH_THEMES/powerlevel10k ]]; then
	git clone https://github.com/romkatv/powerlevel10k.git $ZSH_THEMES/powerlevel10k
fi

unset ZSH_THEMES

# plugins
ZSH_PLUGINS=$ZSH/custom/plugins
if [[ ! -d $ZSH_PLUGINS/zsh-autosuggestions ]]; then
	git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_PLUGINS/zsh-autosuggestions
fi
if [[ ! -d $ZSH_PLUGINS/reminder ]]; then
	git clone https://github.com/AlexisBRENON/oh-my-zsh-reminder $ZSH_PLUGINS/reminder
fi
if [[ ! -d $ZSH_PLUGINS/git-flow-completion ]]; then
	git clone https://github.com/bobthecow/git-flow-completion $ZSH_PLUGINS/git-flow-completion
fi
if [[ ! -d $ZSH_PLUGINS/zsh-syntax-highlighting ]]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_PLUGINS/zsh-syntax-highlighting
fi
unset ZSH_PLUGINS
