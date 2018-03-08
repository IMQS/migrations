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

Pull the docker image to fetch it for the first time, or update it:

    docker pull imqs/dbatool:master

Invoke the generator, passing it `title database`, for example:

    ./generate-migration add-hydrojet main

The above example will generate a new migration called 'add-hydrojet' for the database called `main`, using a dockerized version of dbatool.

### Windows
The helper script won't work on Windows, but you can achieve the same thing using `dbatool`:

    c:\imqsbin\bin\aries\dbatool generate-migration add-hydrojet schema/main.schema migrations/main

### Manual Migrations
You can create a migration without using any tool. Just create a new .sql file and write your code. Obviously, stick to the naming convention (`YYYY-MM-DD-title.sql`). The name of your migration file determines the order in which it is run. If the only files are legacy migrations of the form `0000-000x.sql`, then look at https://github.com/IMQS/migrator for details on the naming convention of new migrations. The `0000-000x.sql` files are NOT NORMAL migrations. They are legacy migrations, and you must not create migrations with names like that, because they will never run.

### Testing
The migration generator will ask you if you are happy with the generated .sql file. Most migrations are simple additions of fields, etc, and don't need to be tested on your local machine. However, if you do want to test, you can run the migrator on the newly generated migrations. Source code for `migrator` lives inside `github.com/IMQS/migrator`. It is a small Go program, and should build out of the box without issues, on any platform. On Windows, it is deployed to `c:\imqsbin\tools\migrator`.

To test a migration of `main` db:

    migrator log postgres:localhost:5432:main:username:password migrations/main

You should see a message informing you that your migration has run. Every migration is run inside a transaction, so it either completes entirely, or not at all. There is no migration reversal mechanism, so if you're testing a tricky migration, then it's up to you to figure out how to backup and restore your database, so that you can iterate on your SQL code.

Once the migration generator has generated an .sql script, it will ask you if you are happy with the output. If you choose Yes, then the generator will copy `dbname.schema -> dbname-prev.schema`. If you choose No, then it will leave your .sql script in the output directory, and exit.

Once you commit this repository with the updated .sql script, CI servers will start to pick it up and run it.