# gzac-docker-compose

Spin up a complete **GZAC** development stack with Docker Compose.

## Prerequisites

- [Docker Desktop](https://docs.docker.com/desktop/install/) (includes Docker Compose v2)
- **Windows line endings** Before cloning, disable automatic CRLF conversion to avoid script line-ending issues:
    ```shell
    git config --global core.autocrlf false
    ```

## Quick start

Clone and start the full stack (GZAC + ZGW):

```shell
git clone --branch v/12 https://github.com/generiekzaakafhandelcomponent/gzac-docker-compose.git
cd gzac-docker-compose
docker compose --profile gzac --profile zgw up -d
```

## Profiles

### Default: GZAC + Keycloak + Databases

Start only core GZAC services:

```shell
docker compose --profile gzac up -d
```

### GZAC with demo data

Start GZAC and seed demo cases:

```shell
docker compose --profile demo up -d
```

### Full stack: GZAC + ZGW services

Start GZAC plus all ZGW-related services:

```shell
# with regular data (defaults to postgres database)
docker compose --profile gzac --profile zgw up -d

# with regular data and mysql database
docker compose --profile gzac --profile zgw --profile mysql up -d

# with demo data
docker compose --profile demo --profile zgw up -d
```

## Service URLs & Ports

### Core GZAC stack

```shell
docker compose --profile gzac up -d
```

| Service                  | URL / Port                                       |
|--------------------------|:-------------------------------------------------|
| gzac-frontend            | [http://localhost:80](http://localhost:80)       |
| gzac-backend             | [http://localhost:8080](http://localhost:8080)   |
| gzac-database (Postgres) | localhost:54320                                  |
| gzac-database-mysql      | localhost:33060                                  |
| gzac-keycloak            | [http://localhost:8081](http://localhost:8081)   |
| gzac-keycloak-database   | localhost:54329                                  |
| gzac-rabbitmq (AMQP)     | localhost:5672                                   |
| gzac-rabbitmq (Mgmt)     | [http://localhost:15672](http://localhost:15672) |

### Additional ZGW services

```shell
docker compose --profile gzac --profile zgw up -d
```

| Service                           | URL / Port                                       |
|-----------------------------------|:-------------------------------------------------|
| objecten-api-database             | localhost:54321                                  |
| objecten-api                      | [http://localhost:8010](http://localhost:8010)   |
| objecttypen-api-database          | localhost:54324                                  |
| objecttypen-api                   | [http://localhost:8011](http://localhost:8011)   |
| open-notificaties-rabbitmq (AMQP) | localhost:5673                                   |
| open-notificaties-rabbitmq (Mgmt) | [http://localhost:15673](http://localhost:15673) |
| open-notificaties-database        | localhost:54319                                  |
| open-notificaties-celery          | [http://localhost:8002](http://localhost:8002)   |
| openzaak-database                 | localhost:5433                                   |
| openzaak                          | [http://localhost:8001](http://localhost:8001)   |

> Ports can be changed in the compose file; update any dependent env if you do.

### Additional OpenKlant and OpenFormulieren

```shell
docker compose --profile gzac --profile zgw --profile openklant --profile openformulieren up -d
```

| Service                           | URL / Port                                       |
|-----------------------------------|:-------------------------------------------------|
| objecten-api-database             | localhost:54321                                  |
| objecten-api                      | [http://localhost:8010](http://localhost:8010)   |
| objecttypen-api-database          | localhost:54324                                  |
| objecttypen-api                   | [http://localhost:8011](http://localhost:8011)   |
| open-forms-database               | localhost:54322                                  |
| open-forms-celery-flower          | [http://localhost:5555](http://localhost:5555)   |
| open-forms-web                    | [http://localhost:8003](http://localhost:8003)   |
| open-klant-database               | localhost:54323                                  |
| open-klant                        | [http://localhost:8006](http://localhost:8006)   |
| open-notificaties-rabbitmq (AMQP) | localhost:5673                                   |
| open-notificaties-rabbitmq (Mgmt) | [http://localhost:15673](http://localhost:15673) |
| open-notificaties-database        | localhost:54319                                  |
| open-notificaties-celery          | [http://localhost:8002](http://localhost:8002)   |
| openzaak-database                 | localhost:5433                                   |
| openzaak                          | [http://localhost:8001](http://localhost:8001)   |

> Ports can be changed in the compose file; update any dependent env if you do.

## Default users (Keycloak 'Valtimo' realm)

> **TOTP algorithm**: SHA-256<br/>
> Ensure your authenticator supports SHA-256 for OTP.

| Username          | Password      | Roles                                                                  | OTP-URL                                                                                                                             |
|-------------------|---------------|------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| `user`            | `user`        | `ROLE_USER`                                                            |                                                                                                                                     |
| `user-mfa`        | `user`        | `ROLE_USER`                                                            | `otpauth://totp/Valtimo:user-mfa?secret=NB4EWM3LO5DTCOLWPIYU2TJUKU3WUMLL&digits=6&algorithm=SHA256&issuer=Valtimo&period=30`        |
| `admin`           | `admin`       | `ROLE_USER`, `ROLE_ADMIN`                                              |                                                                                                                                     |
| `admin-mfa`       | `admin`       | `ROLE_USER`, `ROLE_ADMIN`                                              | `otpauth://totp/Valtimo:admin-mfa?secret=JBXGYSCXNFSHSSKTMFEVA3LXMI4GUM2Q&digits=6&algorithm=SHA256&issuer=Valtimo&period=30`       |
| `developer`       | `developer`   | `ROLE_USER`, `ROLE_ADMIN`, `ROLE_DEVELOPER`                            |                                                                                                                                     |
| `developer-mfa`   | `developer`   | `ROLE_USER`, `ROLE_ADMIN`, `ROLE_DEVELOPER`                            | `otpauth://totp/Valtimo:developer-mfa?secret=I5QVIQTFJU3HAMZTMM2U4SBXJVRTG5TY&digits=6&algorithm=SHA256&issuer=Valtimo&period=30`   |
| `extra-roles`     | `extra-roles` | `ROLE_USER`, `ROLE_ADMIN`, `ROLE_DEVELOPER`, `ROLE_EXTRA1…ROLE_EXTRA8` |                                                                                                                                     |
| `extra-roles-mfa` | `extra-roles` | `ROLE_USER`, `ROLE_ADMIN`, `ROLE_DEVELOPER`, `ROLE_EXTRA1…ROLE_EXTRA8` | `otpauth://totp/Valtimo:extra-roles-mfa?secret=IVUTAYTLOYYEWNDFJBSGMOLOPJKW4OBQ&digits=6&algorithm=SHA256&issuer=Valtimo&period=30` |

## Notes

- This stack is intended for local development. Do not expose these containers directly to the internet without
  hardening.
