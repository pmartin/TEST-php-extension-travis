#ifndef MONEXT_H_
#define MONEXT_H_

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "php.h"
#include "php_ini.h"
#include "ext/standard/info.h"

extern zend_function_entry monext_functions[];
extern zend_module_entry monext_module_entry;


PHP_FUNCTION(ma_fonction);


#endif /* MONEXT_H_ */
