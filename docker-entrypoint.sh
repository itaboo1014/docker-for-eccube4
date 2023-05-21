#!/bin/bash

eccube_root_path="/var/www/eccube"

chown -R www-data: "$eccube_root_path"

chmod -R 705 "$eccube_root_path"
chmod 707 "$eccube_root_path"
chmod 707 "$eccube_root_path/eccube"
chmod 707 "$eccube_root_path/app"
chmod -R 707 "$eccube_root_path/app/Plugin"
chmod -R 707 "$eccube_root_path/app/PluginData"
chmod -R 707 "$eccube_root_path/app/proxy"
chmod -R 707 "$eccube_root_path/app/template"
chmod -R 707 "$eccube_root_path/html"
chmod -R 707 "$eccube_root_path/var"
chmod -R 707 "$eccube_root_path/vendor"
chmod 606 composer.json
chmod 606 composer.lock
chmod 600 .env
chmod 600 .htaccess

apache2-foreground
