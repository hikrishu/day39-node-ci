
# Use Node.js 22 lightweight image
FROM node:22-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install production dependencies only
RUN npm ci --omit=dev

# Copy application source code
COPY src/ ./src/

# Application listens on port 5000
EXPOSE 5000

# Start the application
CMD ["npm", "start"]

