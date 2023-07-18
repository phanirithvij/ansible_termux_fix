set -x

SCRIPTPATH="$(cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)"

$SCRIPTPATH/install_ansible.sh
$SCRIPTPATH/patch.sh
#ANSIBLE_STDOUT_CALLBACK=yaml ./playbooks/pacman.yml
