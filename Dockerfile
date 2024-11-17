# Use an official Node runtime as the parent image, based on Alpine Linux
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application code
COPY api/ ./api
COPY client/ ./client
# Expose the port the app runs on
EXPOSE 3000


# Define the command to run the app
CMD ["npm", "start"]
