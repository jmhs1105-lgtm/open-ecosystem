# VPS Deploy Plan

## Alternative to Railway

Use VPS (Hetzner, DigitalOcean, Linode) for fixed-cost 24/7 hosting.

## Stack on VPS

```
VPS (Ubuntu 24.04)
├── Docker + Docker Compose
├── Nginx (reverse proxy)
├── Backend API (container)
├── Telegram Bot (container)
├── n8n (container)
└── UFW (firewall)
```

## Setup Script

```bash
#!/bin/bash
# vps-setup.sh

# Update
apt update && apt upgrade -y

# Docker
curl -fsSL https://get.docker.com | sh
apt install docker-compose -y

# Firewall
ufw allow 22/tcp
ufw allow 80/tcp
ufw allow 443/tcp
ufw enable

# Clone repos
git clone https://github.com/jmhs1105-lgtm/js-agents.git /opt/js-agents
```

## Docker Compose

```yaml
# docker-compose.yml
version: '3.8'
services:
  api:
    build: ./backend-api
    restart: unless-stopped
    ports: ['3000:3000']
    env_file: .env
    
  n8n:
    image: n8nio/n8n
    restart: unless-stopped
    ports: ['5678:5678']
    volumes:
      - n8n_data:/home/node/.n8n
    environment:
      - N8N_ENCRYPTION_KEY=${N8N_ENCRYPTION_KEY}
      
  nginx:
    image: nginx:alpine
    restart: unless-stopped
    ports: ['80:80', '443:443']
    volumes:
      - ./nginx.conf:/etc/nginx/nginx.conf
      - ./ssl:/etc/nginx/ssl

volumes:
  n8n_data:
```

## Nginx Config

```nginx
server {
    listen 80;
    server_name api.yourdomain.com;
    location / {
        proxy_pass http://api:3000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```

## Deploy

```bash
docker compose up -d --build
docker compose logs -f api
```

## Monitoring

```bash
# CPU/Memory
htop

# Disk
df -h

# Logs
journalctl -u docker -f
docker compose logs -f --tail=50 api
```

## VPS Providers

| Provider | RAM | Price | Location |
|---|---|---|---|
| Hetzner CX22 | 2GB | ~€4/mo | EU/US |
| DigitalOcean | 1GB | $6/mo | Global |
| Linode | 1GB | $5/mo | Global |
