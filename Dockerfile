FROM node

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies first to leverage Docker caching
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Set the command to run your app
CMD ["npm", "start"]
