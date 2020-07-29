FROM postgres:12-alpine

COPY setup.sql /docker-entrypoint-initdb.d

ENV POSTGRES_USER="your-db-user" POSTGRES_PASSWORD="your-db-password" \
  POSTGRES_DB="your-db-name"

VOLUME /var/lib/postgres/data

EXPOSE 5432