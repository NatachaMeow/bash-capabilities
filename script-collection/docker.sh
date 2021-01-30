#!/bin/bash
# Docker capability.

pkgname=docker
categories=("any")

function item_names(){
    # docker ps -a|grep "$1" >/dev/null 2>&1 && echo -n yes || echo -n no
    sudo docker ps -a
}

function item_start(){
    sudo docker run -dit "$1"
}

function item_stop(){
    docker stop "$1"
}
