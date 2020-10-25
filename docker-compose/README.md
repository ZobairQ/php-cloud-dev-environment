# Full Environment

This documentation is for the included `docker-compose.yml`

- [Full Environment](#full-environment)
  - [Quick Get started](#quick-get-started)
  - [Services](#services)
  - [dev-environment](#dev-environment)
  - [DB](#db)
    - [If you have a dump](#if-you-have-a-dump)
    - [If you have a config](#if-you-have-a-config)

## Quick Get started

If in order to get started you can run

    docker-compose up

and the entire environment should be running.

## Services

The environment consists of several services that are linked together.

- We have the main development environment `dev-environment`
- then we have the database `db` that is the mysql database
- and finally we have phpmyadmin, this is the interface for your mysql database.

## dev-environment

You can ready more aboyt dev-environment [here](https://github.com/ZobairQ/php-cloud-dev-environment/blob/master/README.md)

## DB

You can connect to the database from `php` using the services name as the address. 

Here we use `mysqli_connect` to connect to the database.

    mysqli_connect('db', 'root', 'root', "dummyDB");

The first argument `db` is the name of the service, found in in your `docker-compose.yaml`, that starts the database.
The second argument is the user, in our case it is root.
The third argument is the password for the database, in our case that is also root
And the final argument name of the database we want to connect to. In our case it is dummyDB. All of these arguments are actually found in the `docker-compose.yml`

For additional documentation on mysqli_connect, please refer to [PHP documentation](https://www.php.net/manual/en/function.mysqli-connect.php)

### If you have a dump

If you have a dump that you want to start then add following to the `docker-compose.yaml`

    - PATH_TO_DUMP:/docker-entrypoint-initdb.d

This should be added under volumes for the `db` service.

### If you have a config

If you have a config file you can added to by added following in the volumes for `db` service

    - PATH_TO_CONFIG:/etc/mysql/conf.d
