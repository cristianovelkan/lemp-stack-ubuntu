#update
sudo apt-get update
sudo apt install build-essential -y
sudo apt -y install software-properties-common
sudo apt-get update

# Install Nginx
sudo apt-get install nginx php7.4 php7.4-fpm -y

# Install needed modules for PHP
sudo apt-get install php7.4-mysql php7.4-curl php7.4-gd php7.4-bz2 php7.4-mbstring php7.4-xml php7.4-zip php-bcmath -y php7.4-gmp php7.4-intl

# Install Composer (PHP dependencies manager)
## First install php-cli, unzip, git, curl, php-mbstring
sudo apt-get install curl unzip -y

## Downloading and installing Composer
cd ~
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

#remove apache2
sudo apt-get remove apache2 -y
sudo apt-get purge apache2 -y
sudo apt autoremove -y

sudo apt-get purge --auto-remove libapache2-mod-php7.4 -y
sudo rm -rf /etc/php/7.4/apache2
sudo rm -rf /etc/apache2

sudo rm /var/www/html/index.html

sudo service php7.4-fpm restart
sudo systemctl reload nginx

#node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.37.2/install.sh | bash
cd ~
source .bashrc

sudo chmod -R 777 /home/ubuntu/.nvm
nvm install v14
nvm alias default v14

#certbot ssl
sudo apt install certbot python3-certbot-nginx -y
sudo apt-get update
