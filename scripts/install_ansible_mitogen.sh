set -x

# mitogen is not improving anything in connection: local or even localhost ssh (getting exact same exec times)

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

apt install python python-pip
pip install -U pipx
pip install mitogen

strategy_dir=$(python -c "import ansible_mitogen; from pathlib import Path; print(Path(ansible_mitogen.__file__).parent / 'plugins/strategy')")
mkdir -p $PREFIX/etc/ansible
cat > $PREFIX/etc/ansible/ansible.cfg <<EOF
[defaults]
strategy_plugins = $strategy_dir
EOF

# export ANSIBLE_CONFIG=$PREFIX/etc/ansible/ansible.cfg
pipx install ansible==6.7.0 --system-site-packages --include-deps --verbose --force
