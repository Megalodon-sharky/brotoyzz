# ── BRO TOYZz landing — production image ──
# nginx:alpine = ~25 MB final, fits Cloudflare-fronted hosting (Tunnel, Workers TCP, etc)
FROM nginx:1.27-alpine AS runtime

# remove default config
RUN rm /etc/nginx/conf.d/default.conf

# nginx config + site
COPY nginx.conf  /etc/nginx/nginx.conf
COPY index.html  /usr/share/nginx/html/index.html
COPY assets/     /usr/share/nginx/html/assets/

# nginx:alpine already runs as root by default (so it can bind :80) but the
# worker procs drop to 'nginx' user — that's fine for a static landing page.
# If you front it with Cloudflare Tunnel you can change `listen 80` → `listen 8080`
# and run as non-root; doc'd in README.

EXPOSE 8085

# basic healthcheck
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q --spider http://127.0.0.1:8085/healthz || exit 1

# nginx default CMD already starts the daemon in foreground
