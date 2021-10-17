# Cuis-Smalltalk-Postgres
* Cuis interface to PosgresSQL
* Port to Cuis of an old Squeak software. Original author: XXX. Original files location XXX.

## How to test this software 
* It is supposed you have a Postgres database on one of your computer where you can test.
* In my case it is the computer called **db1**, there Postgres runs in a Linux Debian 11.
* So, log there make a database **test1**, accessible by the use **foo** who has password **foopass**.
```bash
$> ssh p@db1
# . user postgres in the Postgres manager
$> p@db1:~$ sudo su - postgres
$> postgres@db1:~$ psql
psql> CREATE DATABASE test1;
psql> CREATE USER foo WITH PASSWORD 'foopass';
psql> GRANT ALL PRIVILEGES ON DATABASE test1 to foo;
psql> \q
```
