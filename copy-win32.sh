
# Copyright (C) Ngwsx


rm -fr ./build/conf
rm -fr ./build/html
rm -fr ./build/logs
rm -fr ./build/temp

mkdir ./build/conf
mkdir ./build/html
mkdir ./build/logs
mkdir ./build/temp

cp -fr conf/nginx-win32.conf ./build/conf/nginx.conf
cp -fr conf/mime.types ./build/conf

cp -fr html/*.html ./build/html
