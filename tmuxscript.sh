#!/bin/sh

session="main"
tmux start

# create a new tmux session, starting vim from a saved session in the new window
tmux new-session -d -s $session # -n vim 
# Select pane 1, run vim
tmux selectp -t 1 

tmux splitw -h -p 50
tmux selectp -t 2
tmux splitw -v -p 50

# Select pane 0
tmux selectp -t 0

tmux new-window -t $session:1 -n code
tmux splitw -h -p 50
tmux splitw -v -p 50
tmux selectp -t 0
tmux send-keys "vim" C-m

tmux select-window -t $session:0

# Finished setup, attach to the tmux session!
tmux attach-session -t $session
