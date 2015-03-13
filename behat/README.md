curl -s https://getcomposer.org/installer | php

./composer.phar update

cp ./vendor/drupal/drupal-extension/behat.yml.dist behat.yml

./bin/behat --init

