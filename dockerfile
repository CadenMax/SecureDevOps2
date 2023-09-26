# Use an official Node.js runtime as the base image 
FROM node:14 

# Set environment variables 
ENV PORT=3000 

# Create a directory for the application code 
WORKDIR /usr/src/app 

# Copy package.json and package-lock.json to the container 
COPY package*.json ./ 

# Install application dependencies 
RUN npm install 
#RUN npm install nodemon
# Copy the rest of the application code 
COPY . . 

# Expose the port the app will run on 
EXPOSE $PORT 

# Define the startup command 
CMD [ "npm", "start" ] 
#CMD ["nodemon", "server.js"]
