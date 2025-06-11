# Use Node.js LTS version
FROM node:20-slim

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Expose the default port
EXPOSE 3000

# Set environment variables
ENV NODE_ENV=production

# Start the server
CMD ["sh", "-c", "node bin/server --port 3000 --domain ${DOMAIN}"]
