# Imagem base oficial Node.js
FROM node:18

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para o container
COPY package*.json ./
COPY chatbot.js ./

# Copia também a pasta de sessão se estiver usando LocalAuth
COPY .wwebjs_auth/ .wwebjs_auth/

# Instala dependências
RUN npm install

# Garante que o diretório da sessão exista
RUN mkdir -p .wwebjs_auth

# Expõe a porta padrão (Railway ignora isso se não for servidor web)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "chatbot.js"]
