FROM node:18.14-alpine3.16 

# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY package.json .

RUN npm install
# Copy app files
COPY . .
# Expose port
EXPOSE 3001
# Start the app
CMD ["npm", "run", "dev"]
