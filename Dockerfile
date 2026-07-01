# initialisation avec l'image node 20 apline (version legere de node)
FROM node:20-alpine AS builder

WORKDIR /app

#Copy des fichiers et clean installation des paquets 
COPY package*.json ./

RUN npm ci && npm cache clean --force

COPY . .

FROM node:20-alpine AS production

WORKDIR /app

#creation du groupe nodejs  et l'utilisateur ec06 
RUN addgroup -g 1001 -S nodejs && \
  adduser -S ec06 -u 1001

#affection du dossier a l'utilisateur EC06 et le groupe
COPY --from=builder --chown=ec06:nodejs /app /app

#Utilisation de l'utilisateur EC06 
#Cela nous evite de lancer l'application avec l'utilisateur ROOT
USER ec06

EXPOSE 3000

# Ajout des healtcheck 
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node -e "require('http').get('http://localhost:3000', (res) => { process.exit(res.statusCode === 200 ? 0 : 1) })"

# Start the application
CMD ["npm", "run", "start"]
