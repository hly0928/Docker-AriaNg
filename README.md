This Docker image is based on [AriaNg](https://github.com/mayswind/AriaNg) and [Nginx](https://www.nginx.com).

Usage:

```bash
docker run --name ariang -d -p 80:80 hly0928/ariang
```

It is recommended to deploy with a reverse proxy like [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy).
