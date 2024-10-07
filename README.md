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
| gzac-database              | 54320       |
| gzac-database-mysql        | 33060       |
| gzac-keycloak-database     | 54329       |
| gzac-keycloak              | 8081        |
| gzac-rabbitmq              | 15672       |
| gzac-rabbitmq              | 5672        |
| objecten-api-database      | 54321       |
| objecten-api               | 8010        |
| objecttypen-api-database   | 54324       |
| objecttypen-api            | 8011        |
| open-forms-database        | 54322       |
| open-forms-celery-flower   | 5555        |
| open-forms-web             | 8003        |
| open-klant-database        | 54323       |
| open-klant                 | 8006        |
| open-notificaties-rabbitmq | 15673       |
| open-notificaties-rabbitmq | 5673        |
| open-notificaties-database | 54319       |
| open-notificaties-celery   | 8002        |
| openzaak-database          | 5433        |
| openzaak                   | 8001        |

### Keycloak and database only
Execute the following command: `docker compose up -d`

| Service                    | Mapped port |
|----------------------------|:-----------:|
| gzac-database              | 54320       |
| gzac-database-mysql        | 33060       |
| gzac-keycloak-database     | 54329       |
| gzac-keycloak              | 8081        |
| gzac-rabbitmq              | 15672       |
| gzac-rabbitmq              | 5672        |

### Default users in the Valtimo realm
| Username        | password    | ROLES                                                                                                                                         | OTP-URL                                                                                                                         |
|-----------------|-------------|-----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| user            | user        | ROLE_USER                                                                                                                                     |                                                                                                                                 |
| user-mfa        | user        | ROLE_USER                                                                                                                                     | otpauth://totp/Valtimo:user-mfa?secret=NB4EWM3LO5DTCOLWPIYU2TJUKU3WUMLL&digits=6&algorithm=SHA256&issuer=Valtimo&period=30      |
| admin           | admin       | ROLE_USER, ROLE_ADMIN                                                                                                                         |                                                                                                                                 |
| admin-mfa       | admin       | ROLE_USER, ROLE_ADMIN                                                                                                                         | otpauth://totp/Valtimo:admin-mfa?secret=JBXGYSCXNFSHSSKTMFEVA3LXMI4GUM2Q&digits=6&algorithm=SHA256&issuer=Valtimo&period=30     |
| developer       | developer   | ROLE_USER, ROLE_ADMIN, ROLE_DEVELOPER                                                                                                         |                                                                                                                                 |
| developer-mfa   | developer   | ROLE_USER, ROLE_ADMIN, ROLE_DEVELOPER                                                                                                         | otpauth://totp/Valtimo:developer-mfa?secret=I5QVIQTFJU3HAMZTMM2U4SBXJVRTG5TY&digits=6&algorithm=SHA256&issuer=Valtimo&period=30 |
| extra-roles     | extra-roles | ROLE_USER, ROLE_ADMIN, ROLE_DEVELOPER, ROLE_EXTRA1, ROLE_EXTRA2, ROLE_EXTRA3, ROLE_EXTRA4, ROLE_EXTRA5, ROLE_EXTRA6, ROLE_EXTRA7, ROLE_EXTRA8 |                                                                                                                                 |

> NOTE: SHA-256 is used for TOTP. Please make sure your authenticator supports this.




