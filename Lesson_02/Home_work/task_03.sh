#!/bin/bash
# Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.

echo '[client]' > ~/.my.cnf
echo 'user=root' >> ~/.my.cnf
echo 'password=master' >> ~/.my.cnf

mysqldump example > example.dump
mysql -e 'CREATE DATABASE IF NOT EXISTS sample;'
mysql sample < example.dump


