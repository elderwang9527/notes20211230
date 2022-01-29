新版 nginx 默认配置文件为/etc/nginx/ nginx.conf，但实际并未做多少配置。而是允许/etc/nginx/conf.d/\_.conf 文件（默认为空）和/etc/nginx/sites-enabled/\*（默认里面只有一个 default 文件，所以一些重要配置 default 配置）

新版 nginx 默认根文件为/var/www/html/index.nginx-debian.html
