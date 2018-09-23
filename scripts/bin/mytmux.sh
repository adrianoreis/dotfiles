#!/bin/bash

sn=AR
devdir=~/development/erlang/CPR/assignment
if [ ! -d "$devdir" ]; then
	mkdir -p "$devdir"
fi

cd "$devdir"

tmux new-session -s "$sn" -n Bash -d
tmux new-window -t "$sn:1" -n Vi vi *.erl
tmux new-window -t "$sn:2" -n Erlang erl -sname node0
tmux select-window -t "$sn:1"
tmux select-window -t "$sn:2"
tmux -2 attach-session -t "$sn"
