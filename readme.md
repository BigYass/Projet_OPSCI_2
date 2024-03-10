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

### Front-end
``` console
git clone https://github.com/arthurescriou/opsci-strapi-frontend 
```
> Attention à changer conf.ts
[Voir le repo...](https://github.com/arthurescriou/opsci-strapi-frontend)

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