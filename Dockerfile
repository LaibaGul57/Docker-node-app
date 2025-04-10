# Base image
FROM node:18

# Create app directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install
COPY . .

# Expose port
EXPOSE 3000

# Run app
CMD ["node", "index.js"]
