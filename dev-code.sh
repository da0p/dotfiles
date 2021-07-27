#!/bin/sh
#
# Setup a work space called `work` with two windows
# first window has 3 panes. 
# The first pane set at 65%, split horizontally, set to api root and running vim
# pane 2 is split at 25% and running redis-server 
# pane 3 is set to api root and bash prompt.
# note: `api` aliased to `cd ~/path/to/work`
#
session="dev"

# set up tmux
tmux start-server

# create a new tmux session, starting vim from a saved session in the new window
tmux new-session -d -s $session -n dev #"vim -S ~/.vim/sessions/dev"

# Split pane 1 horizontally  by 10%
tmux select-pane -t 0
tmux split -v -p 10 -t dev

# Select pane 1 
#tmux select-pane -t 2
# Split pane 2 vertiacally by 25%
tmux split -h -p 50 -t dev

tmux select-pane -t 0

tmux split -h -p 10 -t dev

# return to main vim window
tmux select-window -t $session:0


# Finished setup, attach to the tmux session!
tmux attach-session -t $session
