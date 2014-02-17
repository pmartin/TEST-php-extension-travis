#!/bin/sh

set -e

export CFLAGS="-Wall -Wextra -Wdeclaration-after-statement -Wvla -Wmissing-field-initializers -Wshadow -Wno-unused-parameter"
export REPORT_EXIT_STATUS=1
export NO_INTERACTION=1

for dir in `ls -d -1 */`
do
    echo ">> Testing $dir"
    cd $dir
    
    # Build
    phpize
    ./configure --enable-monext
    make
    
    # Install
    echo 'extension = monext.so' >> ~/.phpenv/versions/$(phpenv version-name)/etc/php.ini
    sudo make install
    
    # Launch tests
    make test
    
    cd ..
done
