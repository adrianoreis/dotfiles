#!/bin/bash

sn=AR

cd ~/development/erlang

tmux new-session -s "$sn" -n Bash -d
tmux new-window -t "$sn:1" -n Vi vi
tmux new-window -t "$sn:2" -n Erlang erl
tmux select-window -t "$sn:1"
tmux select-window -t "$sn:2"
tmux -2 attach-session -t "$sn"
