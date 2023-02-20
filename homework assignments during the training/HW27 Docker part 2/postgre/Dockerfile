FROM postgres

ENV POSTGRES_USER="postgres"
ENV POSTGRES_PASSWORD="mysecretpassword"
ENV POSTGRES_DB="postgresDB"
ENV PGDATA="/var/lib/postgresql/data/pgdata"
VOLUME [ "/custom/mount:/var/lib/postgresql/data " ]

EXPOSE 5432