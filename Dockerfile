# Use Node.js 20 as the base image
FROM node:20-slim

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./
COPY tsconfig.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY src/ ./src/

# Build TypeScript code
RUN npm run build

# Expose the port your app runs on (if needed)
# Update this according to your app's configuration
EXPOSE 3030

# Start the server
CMD [ "npm", "start" ] 