# Use Node.js LTS image
FROM node:lts

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app files
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
