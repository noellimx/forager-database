#!/bin/sh

container_name=dev-mysql-forager
password=your-root-password
port_src=3306
db_name=app

echo "force stopping container with same name [$container_name], if any."
docker stop $container_name  >> /dev/null 2>&1  
docker rm -f -v $container_name >> /dev/null 2>&1  
echo "Running [$container_name]"
docker run -d --name $container_name -p $port_src:3306 -v mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$password mysql:8.0.34
