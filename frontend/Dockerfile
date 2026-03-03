# Use an official Node runtime as a parent image
FROM node:20-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the built Angular project to the container
COPY dist/angular-ecommerce/ ./

# Expose port
EXPOSE 4000

# Start the node server
CMD ["node", "server/server.mjs"]
