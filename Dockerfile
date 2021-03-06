FROM node:10

WORKDIR /usr/src/app
# Install app dependencies

COPY package.json ./

RUN npm install

# Copy app source code
COPY . . 

RUN npm install -g nodemon

#Expose port and start application
EXPOSE 3000

CMD [ "npm", "start" ]