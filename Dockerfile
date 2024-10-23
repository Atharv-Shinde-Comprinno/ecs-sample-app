# Use an official Node.js runtime as the base image
FROM node:23.0.0-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD [ "npm", "start" ]
