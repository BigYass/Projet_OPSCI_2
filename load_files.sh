# Pour docker-compose.yml et .env
cp ../Rapport/docker-compose.yml .
cp ../Rapport/.env .

# Pour le Dockerfile et les fichiers associés de s_app
cp ../Rapport/s_app/Dockerfile s_app/
cp ../Rapport/s_app/.dockerignore s_app/
cp ../Rapport/s_app/.env s_app/

# Pour le Dockerfile et le fichier de configuration de opsci-strapi-frontend
cp ../Rapport/opsci-strapi-frontend/Dockerfile opsci-strapi-frontend/
cp ../Rapport/opsci-strapi-frontend/src/conf.ts opsci-strapi-frontend/src

# Pour les scripts de copie
cp ../Rapport/copy_files.sh .
cp ../Rapport/load_files.sh .
