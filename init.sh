sudo sed -i 's/gunicorn==17.5/gunicorn==19.6.0/g' /usr/bin/gunicorn*
sudo sed -i 's/python/python3/g' /usr/bin/gunicorn*
sudo sed -i 's/python/python3/g' /usr/sbin/gunicorn*
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/test
sudo pip3 install --upgrade django==2.0.0
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/nginx restart