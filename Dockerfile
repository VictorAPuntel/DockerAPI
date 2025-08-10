FROM node:18-alpine3.20

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia os arquivos da máquina host para o diretório de trabalho no container
COPY . .

# Instala as dependências
RUN npm install

# Executa o build do projeto (se aplicável)
RUN npm run build

# Expõe a porta que será usada pela aplicação
EXPOSE 3333

# Comando padrão ao iniciar o container
CMD ["npm", "start"]
