# Simple minecraft server on docker
this repo is a personal docker image for running a minecraft server in a docker container with ddns update
supported via cloudflare api.
This is intended for personal use, but feel free to use it as you wish.

## Usage
## To run the server, first create a .env file with the following content:
```
API_TOKEN=(I used a token for managing my ddns with cloudflare, you can leave it empty if you don't need it)```
DOMAIN=yourdomain.com
SUBDOMAIN=minecraft
MC_VERSION_URL=a url to download the minecraft server jar from

## Then run the following command to start the container:

```bash
docker-compose up -d
```
After that you can connect to your minecraft server at `subdomain.yourdomain.com`
