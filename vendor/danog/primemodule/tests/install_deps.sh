#!/bin/bash
export PATH=$PATH:~/.phpenv/versions/$(phpenv version-name)/bin

cd /tmp
git clone https://github.com/CopernicaMarketingSoftware/PHP-CPP
cd PHP-CPP
make -j16
sudo make install

cd ../
git clone https://github.com/danog/PrimeModule-ext
cd PrimeModule-ext
make -j16
sudo make install
phpenv config-add primemodule.ini
cd ..

exit 0
