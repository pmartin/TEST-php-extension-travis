#include "php_monext.h"

/* {{{ monext_functions */
zend_function_entry monext_functions[] =
{
    PHP_FE(ma_fonction, NULL)
    PHP_FE_END /* Marks the end of function entries */
};
/* monext_functions }}} */

/* {{{ monext_module_entry */
zend_module_entry monext_module_entry = {
    STANDARD_MODULE_HEADER,
    "monext",
    monext_functions, /* Function entries */
    NULL, /* Module init */
    NULL, /* Module shutdown */
    NULL, /* Request init */
    NULL, /* Request shutdown */
    NULL, /* Module information */
    "0.1", /* Replace with version number for your extension */
    STANDARD_MODULE_PROPERTIES
};
/* monext_module_entry }}} */


PHP_FUNCTION(ma_fonction)
{
    php_printf("Hello, World!\n");
}


#ifdef COMPILE_DL_MONEXT
ZEND_GET_MODULE(monext)
#endif
