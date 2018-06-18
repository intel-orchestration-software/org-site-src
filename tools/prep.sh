#!/bin/bash
set -x
REPO_ROOT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
echo REPO_ROOT_DIR is ${REPO_ROOT_DIR}
HUGO_VERSION=${HUGO_VERSION:-"0.42.1"}
HUGO_OUTPUT_ARCHIVE="${REPO_ROOT_DIR}/tools/hugo.tar.gz"

if [ ! -e ${REPO_ROOT_DIR}/output ]; then
    git submodule init
    git submodule update --init
fi

[ -e "${HUGO_OUTPUT_ARCHIVE}" ] || wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -O "${HUGO_OUTPUT_ARCHIVE}"
[ -e "${REPO_ROOT_DIR}/tools/hugo" ] || tar -zvxf "${HUGO_OUTPUT_ARCHIVE}" --directory "${REPO_ROOT_DIR}/tools" hugo 
[[ $? == 2  &&  -e "${HUGO_OUTPUT_ARCHIVE}" ]] && rm -f "${HUGO_OUTPUT_ARCHIVE}"
set +x
