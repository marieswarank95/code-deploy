#!/bin/bash
yum install -y httpd
if [ "$DEPLOYMENT_GROUP_NAME" == "Test" ]
then
    sed -i -e 's/Listen 80/Listen 9091/g' /etc/httpd/conf/httpd.conf
fi

