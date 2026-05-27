# server node
FROM node:22-alpine

# repertoire de travail
WORKDIR /app

# copie des fichiers nécessaires
COPY package.json ./

# lancer l'installation des dépendances
RUN npm install

# copie des autres fichiers
COPY . .

# exposer le port 3000
EXPOSE 3000

# lancement du serveur node
CMD [ "node", "server.js" ]