#!/bin/bash
# Firefox capability.

pkgname=firefox
categories=("desktop")

function aliases(){
    find  ~/.mozilla/firefox/ -maxdepth 1 -name "*.*"|grep -v '.ini'|perl -n -e'/.*\.(.*)/ && printf "$1\n"'
}

function keys(){
    find  ~/.mozilla/firefox/ -maxdepth 1 -name "*.*"|grep -v '.ini'|perl -n -e'/.*\.(.*)/ && printf "$1\n"'
}

function action(){
    nohup firefox -P "$1" &>/dev/null &
}

# New tab:
#         nohup firefox -new-tab https://duckduckgo.com &>/dev/null &
