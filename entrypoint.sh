#!/bin/sh
set -e

# www-dataのUIDを変更する
if [ -n "${HOST_UID}" -a "${HOST_UID}" != "$(id -u www-data)" ]; then
    usermod -u "${HOST_UID}" www-data
fi

if [ -e "composer.json" ]; then
    composer install
fi

if [ -e "package.json" ]; then
    npm install
fi

exec "$@"