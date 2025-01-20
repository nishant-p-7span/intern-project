# Use Node.js base image
FROM node:18-slim

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from current directory to workdir
COPY . .

# Expose port if needed (commonly used for Node.js apps)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]