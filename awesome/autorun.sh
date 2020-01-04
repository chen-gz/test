#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}
dropbox start 
run xfce4-power-manager
# run guake
run mailspring
run nm-applet
run xcompmgr
# run telegram
# run tomighty
# run minetime
run megasync
run fcitx
