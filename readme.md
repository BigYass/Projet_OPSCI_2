# Projet OPSCI - Rendu
Projet intermédiaire pour la matière OPSCI, dans le cursus informatique de la Sorbonne Université.

## Vidéo présentation
[![OPSCI_miniature.png](https://img.youtube.com/vi/VGG0S_nnaI4/0.jpg)](https://www.youtube.com/watch?v=VGG0S_nnaI4)

## Etudiants (Groupe)
 - BAMHAOUD  Yassine  21110685
 - NARDON    Enzo     21117476
 - BENYAHIA  Ilyas    21118889

## Setup

### Base de donnée
> Géré par le docker-compose.yml (l.33)

### Strapi
``` console
yarn create strapi-app s_app
```

>>> Le Dockerfile, .dockignore et .env sont déjà présent
>>> Le programme sera lancer dans un container

### Front-end
``` console
git clone https://github.com/arthurescriou/opsci-strapi-frontend 
```
> Attention à changer conf.ts
[Voir le repo...](https://github.com/arthurescriou/opsci-strapi-frontend)

### Docker
> Il faut changer les variables d'environnement de la base de données dans le docker-compose.yml
> Changer le .env à la racine

#### Build
``` console
docker-compose build --no-cache
```

#### Lancement
``` console
docker-compose up -d
```

#### Arrêt
``` console
docker-compose down
```

### Product et API TOKENS
Il est temps de setup strapi
1. Après avoir lancer strapi et la base de données. Il faut accéder au panel administrateur à l'url http://localhost:1337

2. Ajouter un token pour le front end dans les paramètres

3. Copier le token dans le conf.ts (si vous utiliser le docker-compose, pas besoin de rebuild)

4. Ensuite créer la collection product

5. Créer quelques produits sans quoi le front-end ne fonctionne pas (Failed to fetch <URL>)

6. Vous pouvez lancer le front et devez voir les produits apparaître (Miam burger valouz)

7. Mettez 20/20 à ce projet on mérite

## Docker-Compose
### Containers

#### Base de données
 - Nom : strapiDB
 - Environnement : (Cf. docker-compose.yml)
 - Utilisateur: strapi
 - Mot de Passe : 123
 - Version : latest
 - Port : 5432

#### Strapi
 - Nom : strapi
 - Environnement: s_app/.env (.env égallement)
 - Port : 1337
 - Dépend: strapiDB
 
#### Front-end
 - Nom: front-end
 - Config: src/conf.ts
 - Port : 5173
 - Dépend: strapi

### Networks
strapi:
  - Nom: Strapi
  - Type: Bridge
  - Containers: 3