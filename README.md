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
| Service                    | Mapped port |
|----------------------------|:-----------:|
| gzac-database              | 5432        |
| gzac-database-mysql        | 3306        |
| gzac-keycloak-database     | 5432        |
| gzac-keycloak              | 8080        |
| gzac-rabbitmq              | 15672       |
| gzac-rabbitmq              | 5672        |
| objecten-api-database      | 5432        |
| objecten-api               | 8000        |
| objecttypen-api-database   | 5432        |
| objecttypen-api            | 8000        |
| open-forms-database        | 5432        |
| open-forms-celery-flower   | 5555        |
| open-forms-web             | 8000        |
| open-klant-database        | 5432        |
| open-klant                 | 8000        |
| open-notificaties-rabbitmq | 15672       |
| open-notificaties-rabbitmq | 5672        |
| open-notificaties-database | 5432        |
| open-notificaties-celery   | 8000        |
| openzaak-database          | 5432        |
| openzaak                   | 8000        |

### Keycloak and database only
Execute the following command: `docker compose up -d`
| Service                    | Mapped port |
|----------------------------|:-----------:|
| gzac-database              | 5432        |
| gzac-database-mysql        | 3306        |
| gzac-keycloak-database     | 5432        |
| gzac-keycloak              | 8080        |
| gzac-rabbitmq              | 15672       |
| gzac-rabbitmq              | 5672        |
