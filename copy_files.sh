# Script pour copier Dockerfile, .dockerignore, .env et le docker-compose.yml

cp docker-compose.yml ../Rapport/

cp s_app/Dockerfile ../Rapport/s_app/
cp s_app/.dockerignore ../Rapport/s_app/
cp s_app/.env ../Rapport/s_app/

cp opsci-strapi-frontend/Dockerfile ../Rapport/opsci-strapi-frontend/
  
cp copy_files.sh ../Rapport/
