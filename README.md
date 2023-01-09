# Getting started
## Prerequisites
- [Docker Desktop](https://docs.docker.com/desktop/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Running Docker Compose

### Starting your own GZAC implementation
The zgw-platform.yaml file contains all 'Zaakgericht werken'-services relevant to GZAC. By default, this file is used by Docker Compose.
When creating a new GZAC implementation, only this file is needed to start up the supporting services. 
Execute the following command in a terminal:
```docker compose up -d```

### Start as Docker containers
When starting GZAC as Docker Containers, both the zgw-platform.yaml and the gzac.yaml file should be used. This can be done by combining the files into one command. Execute the following command in a terminal:
```docker compose -f zgw-platform.yaml -f gzac.yaml up -d```
