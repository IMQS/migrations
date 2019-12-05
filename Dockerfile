#  docker build -t imqs/migrations:master . --build-arg MigratorBranch=master

ARG MigratorBranch
FROM imqs/migrator:${MigratorBranch}
COPY migrations /dbschema/migrations
COPY schema /dbschema/schema

# Replace schemas with their -prev.schema versions as they already contain the
# subschemas. Schemas without a -prev.schema probably does not have subschemas
RUN find . -depth -name "*-prev.schema" -exec sh -c 'f="{}"; mv -- "$f" "${f%-prev.schema}.schema"' \;
