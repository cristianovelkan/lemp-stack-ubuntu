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

# First install unzip, curl
sudo apt-get install curl unzip -y

# Install Nginx
sudo apt-get install nginx -y

#sudo systemctl reload nginx

#node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc

sudo chmod -R 777 $HOME/.nvm
nvm install v12
nvm alias default v12

#certbot ssl
#sudo add-apt-repository ppa:certbot/certbot
#sudo apt-get update

#sudo apt-get install python-certbot-nginx -y
