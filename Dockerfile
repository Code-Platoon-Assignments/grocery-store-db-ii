FROM postgres:15

COPY --chown=postgres init.sql /docker-entrypoint-initdb.d/init.sql