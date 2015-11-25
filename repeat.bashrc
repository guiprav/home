#!/bin/bash
function repeat() {
    silent=0
    abort_on_error=0
    abort_on_success=0

    while true;
    do
        if [ "$1" = "-a" ];
        then
            abort_on_error=1
            shift
        elif [ "$1" = "-u" ];
        then
            abort_on_success=1
            shift
        elif [ "$1" = "-s" ];
        then
            silent=1
            shift
        else
            break
        fi
    done

    times="$1"; shift

    if [ "$on_failure" = "persist" ];
    then
        times=99999
    fi

    for i in $(seq "$times");
    do
        if [ "$silent" = "0" ];
        then
            echo "repeat ($i of $times):"
        fi
        eval $@

        if [ "$?" != "0" -a "$abort_on_error" = "1" ];
        then
            echo "repeat: error, abort"
            return
        fi

        if [ "$?" = "0" -a "$abort_on_success" = "1" ];
        then
            echo "repeat: success, abort"
            return
        fi

        i=$(expr "$i" + 1)
    done
}
