#!/bin/sh
function mr() {(
    cd "$(dirname "$(nearest package.json)")" || return

    if [ -x "./$1" ];
    then
        "./$1" ${@:2}
    else
        $@
    fi
)}
