#!/bin/bash
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/nginx.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/helo.py   /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start

