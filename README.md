# BRO TOYZz Landing

Static, single-page marketing site for **BRO TOYZz** (Salahar Sanman PVT LTD DPC, Bengaluru).
Built to the `Crimson-Orbit-Hero` design system, packaged for Docker, fronted by Cloudflare.

```
brotoyzz-landing/
├── index.html              # one-file landing page (CSS+JS inlined)
├── assets/                 # logo, product photos, vending images, favicon
├── nginx.conf              # gzip, caching, security headers, healthcheck
├── Dockerfile              # nginx:alpine-based, ~25 MB final image
├── docker-compose.yml      # one-command bring-up
└── .dockerignore
```

Stack: nothing fancy — vanilla HTML/CSS/JS + animated 2D canvas dot-matrix
background. No build step, no node toolchain. Drop-in, edit, ship.

---

## 1 · Local preview

Quick check before docker:

```bash
# python (any 3.x)
python3 -m http.server 8080 --directory .

# or node
npx --yes serve -p 8080 .
```

Open http://localhost:8080.

---

## 2 · Build & run with Docker

```bash
# build the image
docker build -t brotoyzz-landing:latest .

# run it
docker run -d --name brotoyzz-landing -p 8080:80 --restart unless-stopped brotoyzz-landing:latest

# verify
curl -I http://localhost:8080/
curl    http://localhost:8080/healthz
```

Or use compose:

```bash
docker compose up -d --build
docker compose logs -f
docker compose down
```

The container exposes port `80` internally; compose maps host `8080`.

---

## 3 · Cloudflare deployment

You said the domain is already on Cloudflare. Pick **one** of these paths:

### 3a · Cloudflare Tunnel (recommended — no inbound ports)

Run the site on any host (VPS, home server, Pi). Cloudflare Tunnel gives the world access through Cloudflare's edge — no port forwarding, no exposed IP.

```bash
# install cloudflared on the host (one-time)
# https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/

# login & create a tunnel
cloudflared tunnel login
cloudflared tunnel create brotoyzz

# config: ~/.cloudflared/config.yml
tunnel: brotoyzz
credentials-file: /home/<you>/.cloudflared/<tunnel-id>.json
ingress:
  - hostname: brotoyzz.example.com   # ← your real domain
    service: http://localhost:8080   # ← matches the docker run -p 8080:80
  - service: http_status:404

# route DNS automatically
cloudflared tunnel route dns brotoyzz brotoyzz.example.com

# run as systemd service
cloudflared service install
sudo systemctl start cloudflared
```

Cloudflare handles TLS, caching, DDoS, and DNS. Your container only listens on localhost.

### 3b · Direct origin behind Cloudflare proxy

If the docker host has a public IP:

1. In the Cloudflare dashboard → DNS → add an `A` record pointing your subdomain at the host IP, **proxy ON** (orange cloud).
2. Make sure the host's port 80/443 is reachable from Cloudflare's IPs (or run a reverse proxy like Caddy / Traefik in front to terminate TLS — Cloudflare's "Full (strict)" SSL mode wants this).
3. SSL/TLS → "Full" or "Flexible" depending on your origin TLS setup.

The simplest path: **Tunnel.** Less config, no certificate juggling.

### 3c · Cloudflare Pages (if you don't actually need Docker)

Since this is a fully static site, you can skip Docker entirely:

```bash
# in this directory
npx wrangler pages deploy . --project-name brotoyzz-landing
```

Free tier, custom domain, automatic TLS, edge caching globally. Docker is only worth it if you plan to add server-side bits later (form handler, analytics endpoint, etc).

---

## 4 · Editing content

All copy lives in `index.html`. Common edits:

| What | Where |
|------|-------|
| Tagline / hero copy | search `hero-title` |
| Product specs (price, EAN, etc) | search `<div class="specs">` |
| Channel cards (QSR / Gym / etc) | search `class="channels"` |
| Email recipient | search `info@aerom.co.in` (4 occurrences) |
| Footer company info | search `class="foot-grid"` |

Images live in `/assets/`. Replace files of the same name and rebuild.

---

## 5 · Performance / SEO checklist

Already in: gzip, long-cache static assets, short-cache HTML, semantic structure, OG meta, theme-color, favicon, descriptive alt text, reduced-motion respect, healthcheck endpoint.

Add later if needed: `sitemap.xml`, `robots.txt`, GA/Plausible snippet, structured data (`schema.org/Product`), webp/avif image variants.

---

## 6 · Going non-root (hardening)

`nginx:alpine` runs master as root so it can bind `:80`. To run fully unprivileged:

1. In `nginx.conf` change `listen 80` → `listen 8080`.
2. In `Dockerfile` add at the end: `USER nginx` and `EXPOSE 8080`.
3. Update `docker-compose.yml` ports to `"8080:8080"`.

Cloudflare Tunnel doesn't care which port you expose internally.

---

## 7 · Contact

Site: BRO TOYZz · Salahar Sanman PVT LTD DPC · Bengaluru, Karnataka
Email: info@aerom.co.in
