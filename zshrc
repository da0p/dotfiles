# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Export configuration for working with embedded devices
source ~/.arm/arm.uc

# Export configuration for aliases
source ~/.shell/aliases.sh

# Export configuration for zshrc
source ~/.zsh/settings.zsh

# Export zsh before script
source ~/.zsh/plugins.zsh

# Export configuration for rust
source ~/.zsh/rust.zsh

# Export configuration for nodejs
source ~/.zsh/nodejs.zsh

# Export clion configuration
source ~/.ide/clion.conf

# Allow local customization in the ~/.shell_local
if [ -f ~/.shell_local ]; then
    source ~/.shell_local
fi

# Allow local customization in the ~/.zshrc_local
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

export PATH=~/.local/bin:"$PATH"

. $HOME/.z
