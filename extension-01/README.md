
To build this extension:

    $HOME/bin/php-5.4-debug/bin/phpize
    CFLAGS="-Wall -Wextra -Wdeclaration-after-statement -Wvla -Wmissing-field-initializers -Wshadow -Wno-unused-parameter"
    ./configure --enable-monext --with-php-config=$HOME/bin/php-5.4-debug/bin/php-config
    make

To run it:

    $HOME/bin/php-5.4-debug/bin/php -dextension=modules/monext.so -f ./test.php

To run the tests:

    export NO_INTERACTION=1
    make test
