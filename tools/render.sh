#!/bin/bash

REPO_ROOT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
default_ip=$(ip a show $(route -n | grep UG | grep 0.0.0.0 | awk '{print $8}') | grep "inet "  | awk '{print $2}' | cut -d "/" -f 1)
#default_ip="127.0.0.1"
${REPO_ROOT_DIR}/tools/hugo server --config ${REPO_ROOT_DIR}/config.yaml --renderToDisk --bind "${default_ip}" -b http://${default_ip} --noHTTPCache --disableFastRender -v

