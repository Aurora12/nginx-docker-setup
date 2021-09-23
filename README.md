# What's this about

These are setups for local development.

The scripts expect `docker` command to be available on command line. Use `docker --version` to make sure it is.

Tested on macOS 11.6 and [Docker 20.10.8](https://docs.docker.com/desktop/mac/install/).

Each setup contains a `NAME` file, an Nginx config, and bash scripts to start and stop the container.

`NAME` file contains the name to be used for Nginx container.

# localhost

A setup with port 80 proxying to two local servers running on 8080 (frontend) and 8065 (backend).

This comes useful, for example, when using with [Ngrok](https://ngrok.com/product) that handles tunneling and certificates. 

This creates an HTTPS tunnel to locally running servers behind the reverse proxy that listens to 80:
```
ngrok http --region=eu --hostname=example.eu.ngrok.io 80
```

# test.no

A setup with port 443 proxying to two local servers running on 8080 (frontend) and 8065 (backend).

Port 80 is redirected to 443.

This setup uses `test.no` as a domain for TLS. The certificates included were generated by [mkcert](https://github.com/FiloSottile/mkcert).

This setup is supposed to be used by pointing `test.no` to `127.0.0.1` in the `hosts` file.
