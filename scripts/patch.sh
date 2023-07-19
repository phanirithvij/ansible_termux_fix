set -x

# TODO patch doesn't work with ansible 6.7.0 at all and requires a shell script

ANSIBLE_STDOUT_CALLBACK=yaml ./playbooks/termux_patch.yml -v
