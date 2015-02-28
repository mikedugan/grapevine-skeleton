sudo apt-get install -y zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
mv /vagrant/scripts/zshrc ~/.zshrc

mysql -u root -proot -e 'create database grapevine'
cd /vagrant
php artisan grapevine:install
php artisan vendor:publish
cd /vagrant/vendor/floatingpoint
rm -rf grapevine
ln -s ~/code/* .
