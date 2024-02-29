#!/bin/bash

set -e

mkdir -p /application/var/cache/prod
chmod -R 777 /application/var/cache/prod

mkdir -p /application/var/log
chmod -R 777 /application/var/log


/application/bin/console doctrine:migrations:migrate -n

envsubst '${ADMIN_USERNAME,ADMIN_EMAIL,ADMIN_PASSWORD}' < /application/phpdocker/php-fpm/startup-create-admin.sh.template > /usr/local/bin/startup-create-admin.sh
chmod +x /usr/local/bin/startup-create-admin.sh
/usr/local/bin/startup-create-admin.sh

/usr/sbin/php-fpm8.1 -O
