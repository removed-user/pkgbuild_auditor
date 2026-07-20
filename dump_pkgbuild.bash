#!/bin/bash
function PKGBUILD_metadata()
{
local PKGBUILD_PATH=$(realpath PKGBUILD)
local PKGBUILD_DIR=$(dirname $PKGBUILD_PATH)
printf 'PKGBUILD_PATH='"${PKGBUILD_PATH}"'\n'
printf 'PKGBUILD_DIR='"${PKGBUILD_DIR}"'\n'
}


function dump_pkgbuild () {
PKGBUILD_metadata
# local PACKAGE_DIR=

eval "pkgbuild_function() { $(cat PKGBUILD;) }"

declare -f pkgbuild_function
}
