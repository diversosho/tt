FROM node:18

WORKDIR /app

COPY package*.json ./
COPY chatbot.js ./

# Copia a pasta de sessão (garanta que exista antes do build)
RUN npm install

EXPOSE 3000

CMD ["node", "chatbot.js"]
