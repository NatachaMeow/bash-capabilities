#!/bin/bash
# Wifi capability.

pkgname=nmcli
type=switch
categories=("network")

function is_runnable(){
    echo -n no
}

function has_items(){
    echo -n yes
}

function item_names(){
    nmcli -t con|cut -f1 -d:
}

function item_keys(){
    nmcli -t con|cut -f2 -d:
}

function item_up(){
    nmcli con up uuid "$1"
}

function item_down(){
    nmcli con down uuid "$1"
}

function active_keys(){
     nmcli --colors no --terse connection show --active|cut -f2 -d:
}
