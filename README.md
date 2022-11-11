# Getting started
## Prerequisites
- [Docker Desktop](https://docs.docker.com/desktop/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Starting up
- Choose the correct Docker Compose file(s) based on your requirements
- Run the following command from a terminal in the project root: 
  - For Keycloak and a MySQL database: ```docker compose -f keycloak-and-mysql.yml up -d```
  - For Keycloak, MySQL and Open Zaak: ```docker compose -f keycloak-and-mysql.yml -f openzaak.yml up -d```
