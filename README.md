# Getting started
## Prerequisites
- [Docker Desktop](https://docs.docker.com/desktop/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Starting up
| Docker Compose file         | Services                            |
|:----------------------------|:------------------------------------|
| keycloak-and-mysql.yml      | Keycloak and MySQL                  |
| openzaak-with-demo-data.yml | Open Zaak, Postgis (DB) and Redis   |
| objects-with-demo-data.yml  | Objects API, Objecttypes API, Postgis (DB) and Postgres (DB)   |

- Choose the correct Docker Compose file(s) based on your requirements
- Run the following command from a terminal in the project root: 
  - For Keycloak and a MySQL database: ```docker compose -f keycloak-and-mysql.yml up -d```
  - For Keycloak, MySQL and Open Zaak: ```docker compose -f keycloak-and-mysql.yml -f openzaak-with-demo-data.yml up -d```
  - For Keycloak, MySQL, Open Zaak and Objects/Objecttypes API: ```docker compose -f keycloak-and-mysql.yml -f openzaak-with-demo-data.yml -f objects-with-demo-data.yml up -d```
