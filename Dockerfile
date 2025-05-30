FROM node:18

WORKDIR /app

COPY package*.json ./
COPY chatbot.js ./

# Copia a pasta de sessão (garanta que exista antes do build)
COPY .wwebjs_auth/ .wwebjs_auth/

RUN npm install

EXPOSE 3000

CMD ["node", "chatbot.js"]
