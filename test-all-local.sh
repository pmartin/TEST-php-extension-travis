#!/bin/sh

set -e

export CFLAGS="-Wall -Wextra -Wdeclaration-after-statement -Wvla -Wmissing-field-initializers -Wshadow -Wno-unused-parameter"
export REPORT_EXIT_STATUS=1

for dir in `ls -d -1 */`
do
    echo ">> Testing $dir"
    cd $dir
    
    # Build
    $HOME/bin/php-5.4-debug/bin/phpize
    ./configure --enable-monext --with-php-config=$HOME/bin/php-5.4-debug/bin/php-config
    make
    
    # Launch tests
    DIR=`pwd`
    export TEST_PHP_JUNIT="$DIR/junit.xml"
    make test
    
    cd ..
done
