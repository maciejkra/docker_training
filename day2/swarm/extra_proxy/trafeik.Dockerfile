FROM traefik
COPY cert/ crt/
COPY traefik.toml /etc/traefik/traefik.toml
