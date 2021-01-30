#!/bin/bash
# Systemctl capability.

pkgname=systemctl
categories=("server")

function is_runnable(){
    echo -n no
}

function item_names(){
    systemctl list-unit-files|grep '.service'|grep -v static|grep -v masked|grep -v generated|grep -v indirect|cut -d' ' -f1
}

# function item_keys(){
#     item_names()
# }

function is_item_running(){
    systemctl status "$1"|grep '(running)' >/dev/null 2>&1 && echo -n yes || echo -n no
    exit 0
}

# function item_actions(){

# }

