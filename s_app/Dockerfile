# Utilisation de l'image Node.js
FROM node:20-alpine

# Création du répertoire de travail
WORKDIR /usr/src/app

# Installation des dépendances de Strapi
COPY package*.json ./
RUN yarn install

# Copie du code source de l'application
COPY . .

# Exposition du port 1337 utilisé par Strapi
EXPOSE 1337

# Commande pour démarrer Strapi
CMD ["yarn", "develop"]

