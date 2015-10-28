#!/bin/sh
function pr() {
    (cd "$(nearest .git)/.." && $@)
}
