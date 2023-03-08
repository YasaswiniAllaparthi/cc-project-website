# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the AngularJS application
RUN npm run build

# Set the command to start the server
CMD ["npm", "start"]

docker build -t e-commerce-shop-main.
docker run -p 8080:8080 e-commerce-shop-main
