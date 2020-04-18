#!/bin/bash
docker build -t ulysses_postgres ./postgres
docker run -d -e POSTGRES_USER=ulysses -e POSTGRES_DB=ithaca -e POSTGRES_PASSWORD=telemachus -v "$(pwd)/postgresql.conf":/etc/postgresql/postgresql.conf ulysses_postgres -c 'config_file=/etc/postgresql/postgresql.conf'
