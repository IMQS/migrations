# eg:
#  docker build -t imqs/migrations:master . --build-arg MigratorBranch=master
ARG MigratorBranch
FROM imqs/migrator:${MigratorBranch}
COPY migrations /dbschema/migrations
COPY schema /dbschema/schema
