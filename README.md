# migrations
Database migrations of shared IMQS databases

This repository holds .sql scripts that migrate certain databases:
* main
* generic
* mirror
* temp

## Creating a new migration
Migrations are built by a program called `dbatool`, which lives in source code form, inside `github.com/IMQS/maps`. On Windows deployments, it lives under `c:\imqsbin\bin\aries`. For Linux, there is a docker container on our hub called `imqs/dbatool`.

### Linux
For Linux, there is a wrapper script that invokes `dbatool`'s migration generator:

    # generate-migration <title> <database>
    # For example:
    ./generate-migration add-hydrojet main

The above example will generate a new migration for the database called `main`, using a dockerized version of dbatool.

### Windows
The helper script won't work on Windows, but you can achieve the same thing using `dbatool`:

    c:\imqsbin\bin\aries\dbatool generate-migration add-hydrojet schema/main.schema migrations/main

### Testing
The migration generator will ask you if you are happy with the generated .sql file. Most migrations are simple additions of fields, etc, and don't need to be tested on your local machine. However, if you do want to test, you can run the migrator on the newly generated migrations. Source code for `migrator` lives inside `github.com/IMQS/migrator`. It is a small Go program, and should build out of the box without issues, on any platform. On Windows, it is deployed to `c:\imqsbin\tools\migrator`.

To test a migration of `main` db:

    migrator log postgres:localhost:5432:main:username:password migrations/main

You should see a message informing you that your migration has run. Every migration is run inside a transaction, so it either completes entirely, or not at all. There is no migration reversal mechanism, so if you're testing a tricky migration, then it's up to you to figure out how to backup and restore your database, so that you can iterate on your SQL code.

Once the migration generator has generated an .sql script, it will ask you if you are happy with the output. If you choose Yes, then the generator will copy `dbname.schema -> dbname-prev.schema`. If you choose No, then it will leave your .sql script in the output directory, and exit.

Once you commit this repository with the updated .sql script, CI servers will start to pick it up and run it.