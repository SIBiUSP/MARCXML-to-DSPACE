#!/bin/bash

cd records
csplit -k records.xml '/</record>/' {5000}
for xxs in xx*
do
sed -i 's/<record>//' $xxs
sed -i 's/<\/record>//' $xxs
mv $xxs $xxs.xml
mkdir $xxs
mv $xxs.xml $xxs/
cd $xxs
csplit -k $xxs.xml '/</dublin_core>/' {0}
rm $xxs.xml
mv xx00 dublin_core.xml
mv xx01 metadata_usp.xml
sed -i '1c<?xml version="1.0" encoding="UTF-8"?>' *.xml
sed -i '$a</dublin_core>' dublin_core.xml
wget $(cat dublin_core.xml | grep -o -e 'http.*pdf')
ls -1 | egrep -v '.xml$'  | grep -v 'contents' > contents
cd ..
done