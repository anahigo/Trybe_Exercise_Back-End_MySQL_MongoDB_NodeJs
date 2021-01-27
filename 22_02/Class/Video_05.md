# Comandos

$ mysql -u user -p 
-- user = root
$ (password)
$ use mydb1;
$ show tables;
$ select * from users;
$ exit

$ cd ~/Desktop/
$ mkdir dbbackup
$ cd dbbackup
$ ls -la

$ mysqldump -u root -p --no-data mydb1 > mydb1_dumb.sql 
-- mysqldump -u user -p --no-data dbName > dumpFile.sql 
$ (password)
$ ls -la

$ mysqldump -u user -p mydb1 > mydb1_whitdata_dumb.sql 
-- mysql -u user -p dbName > dumpFile.sql 
$ (password)
$ ls -la

$ mysql -u user -p 
-- user = root
$ (password)

$ drop database mydb1;
$ use mydb1;

$ create database mydb;
$ use mydb1;
$ show tables;
$ exit

$ ls - la
$ mysql -u root -p mydb1 > mydb1_whitdata_dumb.sql 
-- mysql -u user -p dbName > dumpFile.sql 
$ (password)

$ mysql -u user -p 
-- user = root
$ (password)
$ use mydb1;
$ show tables;
$ select * from users;

