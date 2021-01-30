#!/bin/bash
# Bash script collection capabilities framework.
# Examples: ./bash-capabilities.sh firefox capability aliases
#           ./bash-capabilities.sh systemctl is_runnable
#           ./bash-capabilities.sh systemctl is_item_running wpa_supplicant
#
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
SCRIPT="${1}"
CAPABILITY="${2}"
if [ $# -lt 2 ]; then
    echo 'Usage: <Script name> [list|<Capability name>|capability <action> [params]]'
    exit 1
fi

# echo "Capability: ./script-collection/${SCRIPT}.sh"
SCRIPT_PATH="${DIR}/script-collection/${SCRIPT}.sh"
. "${SCRIPT_PATH}"

if [ "${CAPABILITY}" == 'list' ]; then
    grep -E '^[[:space:]]*([[:alnum:]_]+[[:space:]]*\(\)|function[[:space:]]+[[:alnum:]_]+)' "${SCRIPT_PATH}"
elif [ "${CAPABILITY}" == 'capability' ]; then
    if [ "$(LC_ALL=C type -t ${3})" = function ]; then
        echo -n yes
    else
        echo -n no
    fi
elif [ "$(LC_ALL=C type -t ${CAPABILITY})" = function ]; then
    # func_to_call="$2"
    shift 2
    "${CAPABILITY}" $@
fi