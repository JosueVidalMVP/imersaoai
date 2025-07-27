# Use an official Node.js runtime as a parent image FROM node:14  # Set the working directory WORKDIR /usr/src/app
# Copy the package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application code
COPY . .
# Build the React application
RUN npm run build
# Install serve to serve the build directory
RUN npm install -g serve
# Set the command to serve the application
CMD ["serve", "-s", "build"]
