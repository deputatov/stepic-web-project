sudo ﻿ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo unlink /etc/nginx/sites-enabled/default 
sudo /etc/init.d/nginx restart