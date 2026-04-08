# use a lightweight Node.js image based on Alpine Linux
FROM node:18-alpine

# create an app directory inside the container
RUN mkdir -p /home/app

# copy application code from the host to the container
COPY ./app /home/app

# Set the working directory to the /homeapp directory
WORKDIR /home/app

#Install the dependencies usign package.json
RUN npm install

#Command to start the application
CMD ["node","server.js"]