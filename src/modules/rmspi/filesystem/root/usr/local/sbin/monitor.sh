#!/bin/sh

tmux new-session \; \
  send-keys 'sudo tsaxlisten.sh|tee -a axlisten.log' C-m \; \
  split-window -h \; \
  send-keys 'watch -n 1 mheard' C-m \; \
  select-pane -t 1 \; \
  split-window -v \; \
  send-keys 'rmsgwmon' C-m \;\
  set -g mouse on \;
