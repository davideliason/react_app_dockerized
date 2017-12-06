# Use official Node runtime
FROM node:9.2.0

# The base node image sets a very verbose log level.
ENV NPM_CONFIG_LOGLEVEL warn

# Copy all local project files into the image.
COPY . .

# Build for production.
RUN npm run build --production

# Install serve module for simple HTTP server to run the application.
RUN npm install -g serve

# Set the command to start the node server when container launches
CMD serve -s build

# Make port 5000 available to the world outside this container
EXPOSE 5000