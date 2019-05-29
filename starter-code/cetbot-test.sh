sudo docker run -it --rm \
-v /docker-volumes/etc/letsencrypt/pwp:/etc/letsencrypt \
-v /docker-volumes/etc/lib/letsencrypt/pwp:/var/lib/letsencrypt \
-v $(pwd)/public_html:/data/letsencrypt \
-v "/docker-volumes/var/log/pwp:/var/log/letsencrypt" \
certbot/certbot \
certonly --webroot \
--register-unsafely-without-email --agree-tos \
--webroot-path=/data/letsencrypt \
--staging \
-d your-site-here.pasta -d www.your-site-here.pasta