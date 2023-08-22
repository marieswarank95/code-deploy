#!/bin/bash
yum install -y httpd
if [ "$DEPLOYMENT_GROUP_NAME" == "Development" ]
then
    sed -i -e 's/Listen 80/Listen 9090/g' /etc/httpd/conf/httpd.conf
fi

