# bash-capabilities [![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)

### Bash script collection capabilities framework

Provides an easy way to poll what a bash script is capable of in term of functions.

## Examples

    ./bash-capabilities.sh firefox capability aliases
    > yes
    ./bash-capabilities.sh systemctl is_runnable
    > no
    ./bash-capabilities.sh systemctl is_item_running wpa_supplicant
    > yes