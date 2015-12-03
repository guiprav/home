function faketty {
    script -qfc "$(printf "%q " "$@")"
}
