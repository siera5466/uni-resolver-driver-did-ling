# uni-resolver-registrar-driver-did-ling
Universal Resolver and Registrar Driver for Ling DIDs

![192973196-cb5b248b-d307-4fce-bae6-f3525681ea85](https://github.com/user-attachments/assets/4cf2dc81-2d32-44b0-a042-cb07784bf07b)


## Universal Resolver and Registrar: `did-ling`

This is a [Universal Resolver](https://github.com/decentralized-identity/universal-resolver) / [Universal Registrar](https://github.com/decentralized-identity/universal-registrar) driver for `did:ling` identifiers.

## Specifications

- [Decentralized Identifiers](https://www.w3.org/TR/did-core/)
- [Ling DID Specification](https://tangy-gallium-b9b.notion.site/LING-DID-Method-Specification-7b9d25a62a1849a496890b9ef24e0890#a7bc64ae0f7347feb49c6748d4789ad1)

## Example DIDs

- `did:ling:6KTC6qXyejJsvWSW4qkALbb71z6qB7hqF2RCDDGQcAkUwMECKGB`

## Docker Images

- [k4security/ling-client](https://hub.docker.com/r/k4security/ling-client)
- [k4security/ling-server](https://hub.docker.com/r/k4security/ling-server)
- [k4security/ling-dbc](https://hub.docker.com/r/k4security/ling-dbc)
- [k4security/ling-rbc](https://hub.docker.com/r/k4security/ling-rbc)

## Build and Run (Docker Compose)

1. **Pull the Docker images**
   ```bash
   docker pull k4security/ling-client:v1.0.1
   docker pull k4security/ling-server:v1.0.1
   docker pull k4security/ling-dbc:v1.0.1
   docker pull k4security/ling-rbc:v1.0.1

2. **Set `SERVER_HOST` in `docker-compose.yml`**

   In the `docker-compose.yml` file for `ling-client`, located in the `.docker/client` folder, ensure that the `SERVER_HOST` environment variable is set to the `ling-server` address. For example:

   ```yaml
   environment:
     - SERVER_HOST=http://<LING_SERVER_IP>:9000  # replace <LING_SERVER_IP> with the actual ling-server IP address


3. **Run `ling-client` and `ling-server` with Docker Compose**

   The `docker-compose.yml` file for `ling-client` will be located in the `client` folder inside the `.docker` directory, and the `docker-compose.yml` file for `ling-server` will be located in the `server` folder inside the `.docker` directory. You can run both services using the following command:

   ```bash
   docker-compose up -d
