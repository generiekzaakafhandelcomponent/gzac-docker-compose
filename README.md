# Getting started
## Prerequisites
- [Docker Desktop](https://docs.docker.com/desktop/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Running Docker Compose
The zgw-platform.yaml file contains all 'Zaakgericht werken'-services relevant to GZAC. By default, this file is used by Docker Compose.
When starting GZAC as applications, only this file is needed to start up the supporting services:
```docker compose up -d```

When starting GZAC as Docker Containers, the gzac.yaml file should be executed as well. This can be done by combining the files into one command:
```docker compose -f zgw-platform.yaml -f gzac.yaml up -d```
