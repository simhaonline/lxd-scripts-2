#!/bin/bash
FILE=$db_name-`hostname`-`date +%Y%m%d`.sql
mysqldump -h$db_server -u$db_username -p$db_password --port=3306 $db_name > /$FILE
gzip -f /$FILE
/usr/local/bin/aws s3 cp /$FILE.gz s3://gc1-backups
rm /$FILE.gz
