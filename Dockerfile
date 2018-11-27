#Specify base image
FROM node:alpine

#Set working directory inside image
WORKDIR /usr/app

#copy only the package dependencies file for npm to install them
COPY ./package.json ./

#Install dependencies
RUN npm install

#Copy the node files inside the image (current folder of project to image folder)
COPY ./ ./

#Set up default command
CMD ["npm", "start"]
