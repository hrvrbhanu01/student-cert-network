# Use an appropriate base image with Node.js and additional dependencies
FROM node:18.16 AS app

# Set the working directory
WORKDIR /app

# Copy your application code and any required configuration files
COPY . /app

# Install application dependencies
RUN npm install

# Expose any necessary ports
EXPOSE 3000

# Set environment variables if needed
ENV FABRIC_NETWORK_NAME="your_network_name"
ENV FABRIC_PEER_ADDRESS="peer_address"
ENV FABRIC_CHANNEL_NAME="channel_name"

# Start your application (replace with your actual start command)
CMD ["node", "run", "start", "app.js"]
