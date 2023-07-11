set -x

ANSIBLE_STDOUT_CALLBACK=yaml ./playbooks/termux_patch.yml
ANSIBLE_STDOUT_CALLBACK=yaml ./playbooks/pacman.yml
