# another-quotes-editor

## Getting started

### Port numbers

> See this doc for known/common app ports: <https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers>

- **Rails app**: `8400`
- **Database**: `8432`

### macOS

```shell
# This initializes compatibility with Yarn 4.x
corepack enable

# This sets the version of the yarn package manager for the project
yarn set version stable
```

### Windows

### Package dependencies  

- Install the Chocolatey package manager.
- Run the following command in a Powershell 7 terminal:

   ```pwsh
   choco install chocolatey.config
   ```

- Run the following commands to setup project dependencies:

  ```pwsh
  # Preview available mise commands
  mise --help
  # Check the configuration for mise on your local system
  mise doctor
  # View what dependencies will be installed and their configured versions
  mise config
  # Install dependencies
  mise install
  # List installed dependencies
  mise ls
  # List available dependencies (for a specific tool)
  mise ls-remote ruby
  # Hook mise into the MS Windows shell
  echo 'mkdir -p ~/.config/powershell && mise activate pwsh | Out-String | Invoke-Expression' >> ~/.config/powershell/Microsoft.PowerShell_profile.ps1
  ```

### Setting up the database role

```shell
# Create a role matching your local user account
createuser --createdb  --no-createrole --superuser $USER -h 127.0.0.1 --port 5432 -U postgres

# Initialize the database 
bin/rails db:setup

# Run database migrations (generate the schema file)
bin/rails db:migrate
```

### Starting your services (cross-platform)

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

## Using environment variables

### Setup `mise` on Windows

_Instructions to come_.

### Setup `mise` on Unix systems

Include the following line in your profile file (e.g. `~/.zshrc`):

```shell
eval "$(mise activate zsh)"
```

## Managing secrets

```shell
# Editing secrets for a development environment
VISUAL="code --wait" bin/rails credentials:edit

# Editing secrets for a test environment
VISUAL="code --wait" bin/rails credentials:edit --environment=test
```

## Future work

- Setup mise for dependency version management (i.e. ruby, node) on windows: <https://mise.jdx.dev/getting-started.html>

## References

- [12-factor](https://www.12factor.net/) - a framework for building modern web apps
