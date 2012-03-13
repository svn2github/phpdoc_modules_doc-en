#!/bin/sh

# svn co http://svn.php.net/repository/phpdoc/modules/doc-en
# pear install doc.php.net/phd
# pear install doc.php.net/phd_php
# cd doc-en

php doc-base/configure.php  --enable-xml-details
phd --docbook doc-base/.manual.xml --package PHP --format xhtml
open output/php-chunked-xhtml/index.html &

