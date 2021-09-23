# localhost

A setup with port 80 proxying to two local servers running on 8080 (frontend) and 8065 (backend).

This comes useful, for example, when using with [Ngrok](https://ngrok.com/product) that handles tunneling and certificates. 

This creates an HTTPS tunnel to locally running servers behind the reverse proxy that listens to 80:
```
ngrok http --region=eu --hostname=example.eu.ngrok.io 80
```