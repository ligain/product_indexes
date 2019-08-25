# Product Indexes
To connect to DB use credentials:

**host:** localhost

**port:** 3333

**db:** product_indexes

**user:** product_indexes

**password:** product_indexes

The same password for the `root` user.
Stack: MySQL v. 8.0.15

## How to set up database
1) Install docker & docker-compose
```
$ docker --version
Docker version 17.03.2-ce, build f5ec1e2
$ docker-compose --version
docker-compose version 1.13.0, build 1719ceb
```
2) Clone a repository
```
$ git clone https://github.com/ligain/product_indexes.git
```
3) Drill down a project directory
```
$ cd product_indexes/
```
4) Run project
```
$ docker-compose up
```
To to stop a project use `docker-compose down` command.

## Sample Full Text Search query
```sql
SELECT *
FROM positions_models pm
    JOIN ppi_position_import ppi ON pm.mod_ppi_id=ppi.ppi_id
    JOIN technical_details td ON td.tch_mod_id=pm.mod_id
    JOIN technical_details_fields tdf ON tdf.tdf_id=td.tch_property_id
WHERE 
    MATCH (ppi_name) AGAINST ('кормоуборочный') 
    OR MATCH (mod_name) AGAINST ('Challenger');
```

## Project Goals
The code is written for educational purposes.
