<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /vagrant/public
    ServerName lamp.local

    SetEnv APP_ENV vagrant

    <Directory /vagrant/public>
        AllowOverride All
        Options -Indexes +FollowSymLinks
        Require all granted
    </Directory>
</VirtualHost>