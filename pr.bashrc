#!/bin/sh
function pr() {(
    cd "$(nearest .git)/.." || return

    if [ -x "./$1" ];
    then
        "./$1" ${@:2}
    else
        $@
    fi
)}
