#!/bin/bash

# set env var ( https://github.com/hashicorp/vagrant/issues/7015 )

tee "/etc/profile.d/myvars.sh" > "/dev/null" <<EOF
export PATH=/root/.pyenv/bin:/root/google-cloud-sdk/bin:$PATH
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
EOF
