function chronic() {
    temp_file="$(mktemp)" || return
    chmod 600 "$temp_file" || return

    $@ >"$temp_file"

    if [ "$?" -ne 0 ];
    then
        cat "$temp_file"
    fi

    rm "$temp_file"
}
