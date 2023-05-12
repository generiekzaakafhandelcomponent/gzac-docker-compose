# gzac-docker-compose
## Getting started
### Requirements
- [Docker Desktop](https://docs.docker.com/desktop/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Starting up
This repository offers two options for starting up the supporting services for GZAC:
- Including all ZGW related services, like Open Zaak, Objects API and Objecttypes API
- Keycloak and database only

### Including all ZGW related services
Execute the following command: `docker compose --profile zgw up -d`

The following services will be started:
| Service   |      Mapped port      |
|----------|:-------------:|
| GZAC database (postgres) |  54320         |
| Keycloak |  8082         |
| Keycloak database (postgres) |    -   |
| Open Zaak | 8001 |
| Open Zaak database (postgis) | - |
| Objecten API | 8010 |
| Objecten API database (postgis) | - |
| Objecttypen API | 8011 |
| Objecttypen API database (postgres) | - |
| Redis | - |

### Keycloak and database only
Execute the following command: `docker compose up -d`
| Service   |      Mapped port      |
|----------|:-------------:|
| GZAC database (postgres) |  54320         |
| Keycloak |  8082         |
| Keycloak database (postgres) |    -   |
