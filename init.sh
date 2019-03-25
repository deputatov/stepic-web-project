# settings for nginx
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo service nginx restart

# settings for gunicorn
sudo ln -s /home/box/web/etc/gunicorn.py /etc/gunicorn.d/gunicorn.py
cd /home/box/web && sudo gunicorn -c /home/box/web/etc/gunicorn.py hello:wsgi_application
sudo service gunicorn restart
