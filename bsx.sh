#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: $0 must provide devDependencies"
    exit 1
fi

# check for bsconfig.json in directory
if [ ! -f bsconfig.json ]; then
    echo 👎"${RED}Could not find bsconfig.json 👎\n"
    exit 1
fi


# put in parens so its read as array required by jq
DEPS=($@)

# colors
RED='\033[0;31m'
NC='\033[0m'

# add the dependencies to bsconfig in installed successfully
bsconfig() {
    handle() {
        DP=$1
        $(cat bsconfig.json | jq --arg DP $DP -r '.["bs-dependencies"] 
        += [$DP]' | sponge bsconfig.json)
    }
    local DEPS2=${DEPS[@]}

    for each in "${DEPS[@]}"; do
        handle "$each"
    done
}

bsconfig