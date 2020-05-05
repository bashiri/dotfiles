#!/bin/bash

# https://www.reddit.com/r/kde/comments/9pjos2/snaps_in_application_launcher/
command="emulate sh -c 'source /etc/profile'"
sudo echo ${command} >> /etc/zsh/zprofile
