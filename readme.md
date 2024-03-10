# Projet OPSCI - Rendu
Projet intermédiaire pour la matière OPSCI, dans le cursus informatique de la Sorbonne Université.

## Etudiants (Groupe)
 - BAMHAOUD  Yassine  21110685
 - NARDON    Enzo     21117476
 - BENYAHIA  Ilyas    21118889

## Setup

### Base de donnée
> Géré par le docker-compose.yml (l.33)

### Strapi
#### Création du projet
La première étape est de créer une application strapi :
``` console
yarn create strapi-app s_app
```

#### Ajout du Dockerfile et du .env
On y créer le dockerfile, .dockignore(optionel) et le .env
> Confère ./Dockerfile_strapi
``` console
cp Dockerfile_strapi s_app/Dockerfile
```

### Front-end
``` console
git clone https://github.com/arthurescriou/opsci-strapi-frontend 
```

[Voir le repo...](https://github.com/arthurescriou/opsci-strapi-frontend)


## Containers (docker-compose.yml)
### Base de données

Postgres:
 - Nom : strapiDB
 - Environnement : (Cf. docker-compose.yml)
 - Utilisateur: strapi
 - Mot de Passe : 123
 - Version : latest (16.0)
 - Port : 5432

Strapi:
 - Nom : strapi
 - Environnement: s_app/.env (.env égallement)
 - Port : 1337
 
Front-End:
 - Nom: front-end
 - Config: src/conf.ts
 - Port : 5173