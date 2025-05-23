FROM odoo:17

# (opcionális) Ha vannak saját moduljaid:
COPY ./addons /mnt/extra-addons

# (opcionális) Beállítások, ha például a config fájlt is módosítod
# COPY ./odoo.conf /etc/odoo/odoo.conf

# (Railway saját Postgres szolgáltatásához ezt fogod használni majd .env-ben)
# Semmi más extra nem szükséges!