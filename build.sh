#!/bin/sh

# svn co http://svn.php.net/repository/phpdoc/modules/doc-en
# pear install doc.php.net/phd
# pear install doc.php.net/phd_php
# cd doc-en

php doc-base/configure.php  --enable-xml-details
rm -f core
phd --docbook doc-base/.manual.xml --package PHP --format xhtml
phd --docbook doc-base/.manual.xml --enable-xml-details --format php --package PHP --noindex
#open output/php-chunked-xhtml/index.html &

