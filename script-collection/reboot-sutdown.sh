#!/bin/bash
pkgname=reboot-shutdown

function is_runnable(){
    echo -n no
}

function item_names(){
    echo -e "Reboot PC\nShutdown PC"
}

function item_keys(){
    echo -e "reboot\nshutdown"
}

function item_default_action(){
    if [[ "$1" == 'reboot' ]]; then
        reboot
    elif [[ "$1" == 'shutdown' ]]; then
        systemctl shutdown
    fi
}

function active_keys(){
    echo ''
}
