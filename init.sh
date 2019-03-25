sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.py /etc/gunicorn.d/gunicorn.py
cd /home/box/web && sudo gunicorn -c /home/box/web/etc/gunicorn.py hello:application
sudo /etc/init.d/gunicorn restart