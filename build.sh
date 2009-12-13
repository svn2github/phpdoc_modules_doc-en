#!/bin/sh

# svn co http://svn.php.net/repository/phpdoc/modules/doc-en
# pear install doc.php.net/phd-beta
# cd doc-en

php doc-base/configure.php
phd --docbook doc-base/.manual.xml --package PHP --format xhtml --enable-xml-details
open output/php-chunked-xhtml/index.html &
