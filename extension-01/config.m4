
PHP_ARG_ENABLE(monext, whether to enable monext support,
[  --enable-monext         Enable monext support])

if test "$PHP_MONEXT" = "yes"; then
    PHP_NEW_EXTENSION(monext, monext.c, $ext_shared)
fi
