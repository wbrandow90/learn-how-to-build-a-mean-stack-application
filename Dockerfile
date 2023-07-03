# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs-api

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
RUN npm install loopback-cli
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose port 3000 outside container
EXPOSE 3000
# command used to start application
CMD npm run start