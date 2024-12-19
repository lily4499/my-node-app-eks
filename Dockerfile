# Use Node.js LTS as the base image
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install --production

# Copy application files
COPY . .

# Expose port 3000 and start the app
EXPOSE 3000
CMD ["node", "app.js"]
