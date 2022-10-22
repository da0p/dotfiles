export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fasd z zsh-autosuggestions zsh-syntax-highlighting virtualenv)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
POWERLEVEL10K_MOE='nerdfont-complete'
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_DISABLE_RPROMPT=true
POWERLEVEL10K_PROMPT_ON_NEWLINE=true
POWERLEVEL10K_MULTILINE_LAST_PROMPT_PREFIX=">"
POWERLEVEL10K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL10K_VCS_GIT_HOOKS=(vcs-detect-changes)
POWERLEVEL9K_INSTANT_PROMPT=quiet
# The following can take effect without comment:
# Start error command automatic correction
ENABLE_CORRECTION="true"

# Disable checking status of repo
DISABLE_UNTRACKED_FILES_DIRTY="true"

# In the process of command execution, use small rred dots to prompt
COMPLETION_WAITING_DOTS="true"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export DEFAULT_USER="$(whoami)"
