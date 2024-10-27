mkdir -p /etc/nginx/supersecret
htpasswd -b -c /etc/nginx/supersecret/htpasswd arminannie jrkmit21

cp /etc/nginx/sites-available/default /etc/nginx/sites-available/lb_php

echo 'upstream worker {

    #least_conn;
    #ip_hash;

    server 10.74.2.2;
    server 10.74.2.3;
    server 10.74.2.4;
}

server {
    listen 80;
    server_name eldia.it21.com www.eldia.it21.com;

    root /var/www/html;

    index index.html index.htm index.nginx-debian.html index.php;

    server_name _;

    location / {
		allow 10.74.1.77;
        allow 10.74.1.88;
        allow 10.74.2.144;
        allow 10.74.2.156;
        deny all;
        proxy_pass http://worker;
    }

	location /titan {
        proxy_pass http://attackontitan.fandom.com;
        proxy_set_header Host attackontitan.fandom.com;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
	
	auth_basic "Restricted Content";
    auth_basic_user_file /etc/nginx/supersecret/htpasswd;
} ' > /etc/nginx/sites-available/lb_php

ln -s /etc/nginx/sites-available/lb_php /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default

service nginx restart