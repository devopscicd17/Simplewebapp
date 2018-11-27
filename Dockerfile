#Specify base image
FROM node:alpine

#Copy the node files inside the image (current folder of project to image folder)
COPY ./ ./

#Install dependencies
RUN npm install

#Set up default command
CMD ["npm", "start"]
