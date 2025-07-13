FROM node:18-alpine

# Instalar N8N globalmente
RUN npm install -g n8n

# Configurar directorio de trabajo
WORKDIR /home/node
RUN chown node:node /home/node
USER node

# Variables de entorno
ENV N8N_PORT=5678
ENV NODE_ENV=production

# Exponer puerto
EXPOSE 5678

# Comando de inicio
CMD ["n8n", "start"]
