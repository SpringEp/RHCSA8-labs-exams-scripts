#!/bin/bash

mkdir /tmp/dir1
chown root:root /tmp/dir1
setfacl -m u:user10:rwX /tmp/dir1
setfacl -m d:u:user10:rwX /tmp/dir1
getfacl /tmp/dir1
