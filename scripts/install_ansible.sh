set -x

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

apt install python python-pip
pip install -U pipx
pipx install ansible --system-site-packages --include-deps
