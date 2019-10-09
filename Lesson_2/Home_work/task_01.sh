#!/bin/bash
# Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.

echo '[mysql]' > ~/.my.cnf
echo 'user=root' >> ~/.my.cnf
echo 'password=master' >> ~/.my.cnf

