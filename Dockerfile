# Dockerfile for Node.js application
FROM node:14.21-alpine
# Set environment variables
WORKDIR /app
# Install dependencies
COPY package*.json ./
RUN npm install
# Copy application files
COPY . .
# Expose the application port
EXPOSE 3001
# Start the application
CMD ["npm", "start"]