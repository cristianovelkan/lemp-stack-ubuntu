#remove apache2
sudo apt-get remove apache2 -y
sudo apt-get purge apache2 -y
sudo apt autoremove -y

sudo apt-get purge --auto-remove libapache2-mod-php7.2
sudo rm -rf /etc/php/7.2/apache2
sudo rm -rf /etc/apache2

sudo rm /var/www/html/index.html

#update
sudo apt-get update
sudo apt install build-essential -y

# Install Nginx
sudo apt-get install nginx -y

# Install PHP 7.2
sudo apt-get update
sudo apt-get install php7.2 -y

# Install needed modules for PHP
sudo apt-get install php7.2-fpm php7.2-mysql php7.2-curl php7.2-gd php7.2-bz2 php7.2-mbstring php7.2-xml php7.2-zip php-bcmath -y php7.2-gmp

# Install Composer (PHP dependencies manager)
## First install php-cli, unzip, git, curl, php-mbstring
sudo apt-get install curl git unzip -y

## Downloading and installing Composer
cd ~
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

sudo service php7.2-fpm restart
sudo systemctl reload nginx

#node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

source ~/.bashrc

nvm install v12
nvm alias default v12

#certbot ssl
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update

sudo apt-get install python-certbot-nginx -y
