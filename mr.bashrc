#!/bin/sh
function mr() {
    (cd "$(dirname "$(nearest package.json)")" && $@)
}
