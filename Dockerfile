FROM imqs/ubuntu-base
COPY migrations /dbschema/migrations
COPY schema /dbschema/schema