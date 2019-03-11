# contact-form
PWP Contact form Demo
https://www.humankode.com/ssl/how-to-set-up-free-ssl-certificates-from-lets-encrypt-using-docker-and-nginx
### Steps to follow after initial SSL cert was issued

1. make necessary directory changes 
* replace `*/public_html/php/mail-config.php` for `/php/mail-config.php` in the .gitignore file
* make sure that the paths to the SSL-certs in production.conf are correct and that  `return 301 https://uss-hopper.site$request_uri;` points to _our_ site.
* change the action attribute in the contact form to `php/index.php`
* make sure your index.html is an html file

2. cd into the the project on digital ocean
3. run `mkdir dh-param`
4. run `sudo openssl dhparam -out dh-param/dhparam-2048.pem 2048` 
5. run `docker-compose up -d`
6. read the rest of the article to learn about renewing TLS certs

