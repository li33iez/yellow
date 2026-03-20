FROM node:latest

WORKDIR /app

# Copy only dependency files first (for caching)
COPY package*.json ./

RUN npm install

# Copy all source code
COPY . .

# Optional: document port
EXPOSE 8085

# Run the app
CMD ["node", "index.js"]
