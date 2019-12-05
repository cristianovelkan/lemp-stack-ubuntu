sudo apt-get update
sudo apt install build-essential -y

# Install Nginx
sudo apt-get install nginx

# Install PHP 7.2
sudo apt-get update
sudo apt-get install php7.2

# Install needed modules for PHP
sudo apt-get install php7.2-fpm php7.2-mysql php7.2-curl php7.2-gd php7.2-bz2 php7.2-mbstring php7.2-xml php7.2-zip php-bcmath

# Install Composer (PHP dependencies manager)
## First install php-cli, unzip, git, curl, php-mbstring
sudo apt-get install curl git unzip

## Downloading and installing Composer
cd ~
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

sudo service php7.2-fpm restart
sudo systemctl reload nginx

#node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

nvm install v12
nvm alias default v12

#certbot ssl
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update

sudo apt-get install python-certbot-nginx
