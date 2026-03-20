FROM node:18-alpine

WORKDIR /app

# Copy only dependency files first (for caching)
COPY package*.json ./

RUN npm cache clean --force
RUN npm install

# Copy all source code
COPY . .

# Optional: document port
EXPOSE 8085

# Run the app
CMD ["node", "index.js"]
