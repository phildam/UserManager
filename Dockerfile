From node:carbon

#app directory
#WORKDIR /app

WORKDIR /usr/src/app
RUN apt-get install curl


COPY package*.json ./

RUN npm install

#bundle app source
COPY . .

# Make port 3001 available to the world outside this container

EXPOSE 3001

# Run when the container launches
CMD ["npm", "start"]