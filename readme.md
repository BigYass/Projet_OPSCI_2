# Projet OPSCI - Rendu
## Etudiants
##### Nom       Prénom   N. étudiant
BAMHAOUD  Yassine  21110685
NARDON    Enzo     21117476
TODO

## Setup
### Backend
La première étape est de créer une application strapi :
``` shell
yarn create strapi-app s_app
```

On y créer le dockerfile, .dockignore(optionel) et le .env
> Confère ... (TODO)
``` shell
cp Dockerfile_strapi s_app/Dockerfile
```

Le docker-compose s'occupera de créer le container de la base de données.
Ici postgres:latest