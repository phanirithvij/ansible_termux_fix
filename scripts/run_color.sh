set -x

# ANSIBLE_LOCAL_TEMP=/data/data/com.termux/files/home/ansible_it/.ansible/tmp ANSIBLE_DEBUG=True ANSIBLE_KEEP_REMOTE_FILES=1 \
# unbuffer \
ansible localhost -m ping #-a data=crash -vvvvv 2>&1 | tee termux_color.log
