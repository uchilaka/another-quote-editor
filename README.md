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

_Add setup on windows steps here_

### Setting up the database role

```shell
# Create a role matching your local user account
createuser --createdb  --no-createrole --superuser $USER -h 127.0.0.1 --port 5432 -U postgres

# Initialize the database 
bin/rails db:setup

# Run database migrations (generate the schema file)
bin/rails db:migrate
```

## Managing secrets

```shell
# Editing secrets for a development environment
VISUAL="code --wait" bin/rails credentials:edit

# Editing secrets for a test environment
VISUAL="code --wait" bin/rails credentials:edit --environment=test
```
