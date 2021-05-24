# pgver
[![Build Status](https://travis-ci.org/chirkin/pgver.svg?branch=main)](https://travis-ci.org/chirkin/pgver)

Simple PostgreSQL schema versioning tool

## Motivation

Wouldn't it be nice to migrate database via [psql](https://www.postgresql.org/docs/current/app-psql.html)?
This is the tool that does just that.

## Concepts

There are a several tools for migrating PostgreSQL database schema. Undoubtedly,
each has been applied in its field, in relation to a programming language,
framework, ORM, etc. This tool uses psql (PostgreSQL interactive terminal) and
promotes specific methodology of splitting functional and data.

## Usage

You need to have 2 directories in your database schema project: `functional` and
`updates`. `updates` folder can contains multiple files naming like:
`update--N.sql`, where `N` is a number of update. `functional` folder should
contains 2 scripts: `__deploy.sql` and `__drop.sql`. Often `__deploy.sql` script
creates functional schemas and and their objects, `__drop.sql` script drops this
schemas.

Вам так же необходимо выбрать схему, в которой `pgver` будет хранить текущую
версию, схему нужно передать `psql` в переменной `pgver_schema`. Можно конечно
использовать схему `public`, но рекомендуется создать свою с помощью скриптов
обновления.

## Example

You can see `example` folder. To deploy it you need to:

```
cd example;
psql [options] -1f ../pgver.sql -v pgver_schema=_data
```

## Requirements

* PostgreSQL 10+ client (officially; previous versions not tested)
* bash
* md5sum
* Linux, macOS
