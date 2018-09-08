#!/bin/bash

mongod &

if [ ! -f "/data/db/do_not_delete" ]; then
	mongorestore -h localhost -d leanote --dir /root/leanote/mongodb_backup/leanote_install_data/
	echo "do not delete this file" >> /data/db/do_not_delete
	chmod 400 /data/db/do_not_delete
fi
