FROM node 
WORKDIR /app
COPY package*.json ./
COPY . .
RUN npm install
EXPOSE 3008
CMD ["node", "app.js"]
CMD ["npm", "install", "-g", "pm2"]
CMD ["pm2", "start", "app.js", "--name=nodejs-server"]
CMD ["pm2", "save"]
