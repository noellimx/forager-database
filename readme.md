# forager-database

For database administration.

# Requirements

Docker: images for flyway and mysql will be pulled.

# Development Database

`./dev.sh` runs a new sql container.

# Migration scripts

`./migrations`

## NOTES on Migration

Seeding operations should be executed by the application service. For example, if a new user is to be created, use package UserService::create or HTTP RESTful .../register API outside of database creation and migration process. 

Data alteration, i.e changing of column names, adding new field attributes of existing tables, augmenting data of existing rows, is permissible.

## NOTES on Volumes / Data

This migration process is fully manually. With appropriate access, administrator should explicitly manage existing storage with support from flyway.

### useful commands

`mysql -u root -pyour-root-password -h localhost`

`mysql -u root -pyour-root-password -h localhost app` where app is database name
