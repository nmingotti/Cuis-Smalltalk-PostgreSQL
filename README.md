# Cuis-Smalltalk-PostgreSQL
* *Cuis* interface to *PosgreSQL*
* Port of an oldish *Squeak* software to Cuis. Original author: *Yanni Chiu*. Original files & info [here](http://map.squeak.org/package/a8d3ca99-f5f4-45e0-9aa7-100a77b64f45). Version used for starting the port is *3.1*, which was last updated on 01-Feb-2006.
* **status**. At 30-Oct-2021 all the **21 original tests** provided in 2006 are **green**, tested in *Cuis5.0-4928.image*. CAVEAT. I tweaked a few tests, see the developer notes at the end.  
* There is [another package](https://github.com/Phantasus/Cuis-Smalltalk-Postgres) for DB connection from Cuis which comes from a *Pharo* release and
has a more general scope than this one, for example it can connect to SQlite. I have not tried it yet.

## Minimal interaction example 

This data come from a 100 kW photovoltaic production plant logger. Of course, night reading are not that interesting,
but the SQL query is really simple.

```smalltalk
Feature require: 'PostgreSQL'. 

". get data from the a database "
con _ PGConnection new.
arg _ PGConnectionArgs hostname: 'db1.borghi.lan' portno: 5432 databaseName: 'solare'
                       userName: 'myuser' 	password: 'fooBarBaz'.  
con connectionArgs: arg.
con startup .
out _ con execute: 'SELECT * FROM ftv1 LIMIT 10'.  
con terminate.

". see what is in the output variable "
out class.    "=> PGResult "

". get columns info, observe here you see colun name and Postgres datatype "
out rowDescription columnDescriptions . "=> an OrderedCollection(
PGColumnDescription(fieldName='istante',typeOid=1114,typeSize=8,typeModifier=4294967295)
PGColumnDescription(fieldName='produzione',typeOid=23,typeSize=4,typeModifier=4294967295)
PGColumnDescription(fieldName='consumo',typeOid=23,typeSize=4,typeModifier=4294967295)) "

". see the first row, unparsed, all fields are String "
out rows first .       "=> PGAsciiRow('2017-08-07 23:05:00','279','1350',) "

". see the first row, parsed"
out rows first data.   "=> an OrderedCollection(2017-08-07T23:05:00+00:00 279 1350) "

". this is useful to make a table"
Feature require: 'Printf'. 

". write a data table to Transcript, even if in Smalltalk we can do better than that"	
ws _ (String new: 10000) writeStream. 
rowNames _ out rowDescription columnDescriptions collect: [ :r | r fieldName ] . 
ws nextPutAll: ('\n\n-------------------------------------------------------------------- \n' printf: {} ).
ws nextPutAll: ('%30s | %15s | %10s \n' printf: rowNames ).
ws nextPutAll: ('-------------------------------------------------------------------- \n' printf: {}).
out rows do: [ :r | |fields| 
	fields _ r data collect: [ :x | x asString ]. 
	ws nextPutAll: ('%30s | %15s | %10s \n' printf: fields)
	].
ws close. 
Transcript show: (ws contents). 
```


<img src="https://github.com/nmingotti/Cuis-Smalltalk-PostgreSQL/blob/main/images/db-output-printed-1.png" width=50%>


## Security warning
* The machines I use are mostly in my office LAN so I don't need to worry too much about unwanted logins.
This in general will not be the case. A quick fix is to make Postgres port 5432 available only to localhost and 
then to reach your database via an ssh tunnel. This gives you encription and offloads the authentication problem
to your server ssh, which is very strong on this. 

## Todo
* Write a GUI for interactions
* It would be nice to have some default readable text output in Transcript. Problem: the default font in Transcript is
  not monospace. It does not seem wise to change that.

  
## How to run the tests 
* It is supposed you have a Postgres database in one of your computers where you can test.
* In my case it is the computer called **db1**, there **Postgres-13** runs in a **Linux/Debian-11**.

* log into **db1**, make a database **test1**, let it be accessible by the user **foo** who has password **foopass**.
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
* Then you need to make the database *foo* accessible from the network, add these lines at the end of file */etc/postgresql/XX/main/pg_hba.conf*. 
They say whoever on the network can reach this database authenticating with password, hashed via *md5*. 
```
host "test1" foo 0.0.0.0/0 md5
host "test1" foo ::/0          md5
```
* Then restart you postgres service 
```
$> sudo systemctl restart postgresql.service
```
* Finally check you can log into the database with the new user you created using *psql*. Type the password when asked.
```
$> psql -h db1.borghi.lan -U foo -d test1
```
* Now you need to modify `TestPGConnectio>>newConnection` in the *private* category, put your server data and after that run the tests as usual.
  In my computer I have this:
```smalltalk
con _ PGConnection new.
arg _ PGConnectionArgs hostname: 'db1.borghi.lan' portno: 5432 
      databaseName: 'test1' userName: 'foo' 	password: 'foopass'.  
con connectionArgs: arg.
^ con 
```

## Developer notes 
* **official documentation** relevant for this package, see: [PostgreSQL Documentation, Chapter 7. Internals](https://www.postgresql.org/docs/13/internals.html) 
* I kept all the tests coming from the 2006 release of this package but I had to make a few changes.
* I added a few oid for data types: Real, Double, Numeric in `PGConnection(class)>>buildDefaultFieldConverters`. I used
  the oid I could read coming from Postgres in the rawdata.
* I rewrote the logic of `testNotify2` because I did not get how the original test was supposed to pass.
* I had to change `TestPGConnection>>floatFromByteArray` (private category) but here I am not sure my code is equivalent to the original.
 




