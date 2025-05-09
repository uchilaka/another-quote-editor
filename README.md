# another-quotes-editor

## Getting started

### macOS

```shell
# This initializes compatibility with Yarn 4.x
corepack enable

# This sets the version of the yarn package manager for the project
yarn set version stable
```

### Windows

_Add setup on windows steps here._

### Setting up the database role

```shell
# Create a role matching your local user account
createuser --createdb  --no-createrole --superuser $USER -h 127.0.0.1 --port 5432 -U postgres

# Initialize the database 
bin/rails db:setup

# Run database migrations (generate the schema file)
bin/rails db:migrate
```

### Starting your services

In the repo within a terminal, run the following command:

```shell
# Run this command in the repo
docker compose up -d

# To stop your services
docker compose stop

# To teardown your services 
docker compose down --volume

# Run this command to view the logs
docker compose logs --follow --since=5m
```

## Managing secrets

```shell
# Editing secrets for a development environment
VISUAL="code --wait" bin/rails credentials:edit

# Editing secrets for a test environment
VISUAL="code --wait" bin/rails credentials:edit --environment=test
```
