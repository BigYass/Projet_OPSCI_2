# Projet OPSCI - Rendu
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
``` shell
yarn create strapi-app s_app
```

#### Ajout du Dockerfile et du .env
On y créer le dockerfile, .dockignore(optionel) et le .env
> Confère ./Dockerfile_strapi
``` shell
cp Dockerfile_strapi s_app/Dockerfile
```

#### Lancement
On peut lancer créer et lancer le container comme ceci:
##### Build
``` shell
docker build -t strapi .
```
##### Run
``` shell
docker run -dit strapi --name strapi -e DATABASE_HOST=\<host\> -e DATABASE_USER=\<user\> -e DATABASE_PASSWORD=\<psw\>
```
> Ici les variables d'environnement sont stocké dans les .env

Le docker-compose s'occupera de créer le container de la base de données.
Ici postgres:latest