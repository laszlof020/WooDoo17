FROM odoo:17

RUN apt-get update && apt-get upgrade -y && apt-get clean

COPY ./addons /mnt/extra-addons

# (opcionális) Beállítások, ha például a config fájlt is módosítod
# COPY ./odoo.conf /etc/odoo/odoo.conf

# (Railway saját Postgres szolgáltatásához ezt fogod használni majd .env-ben)
# Semmi más extra nem szükséges!

RUN apt-get update && apt-get install -y --no-install-recommends \
    some-package \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*