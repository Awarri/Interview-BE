# Use the official Node.js 16 image as a parent image
FROM node:22.8

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json to /app directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of your application's code
COPY . .

# Inform Docker the container is listening on port 4000 at runtime
EXPOSE 4000

# Define the command to run the application
CMD ["node", "server.js"]


###




