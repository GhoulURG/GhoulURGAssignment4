# Use the official Node.js 16 image as the base
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all remaining source files into the container
COPY . .

# Expose port 3000 so it can be accessed from the host
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
