#!/bin/sh
function npr() {(
    cd "$(dirname "$(nearest package.json)")" || return

    if [ -x "./$1" ];
    then
        "./$1" ${@:2}
    elif [ -x "./$1.sh" ];
    then
        "./$1.sh" ${@:2}
    else
        $@
    fi
)}
