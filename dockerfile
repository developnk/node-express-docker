# Step 1: Use an official Node.js runtime as the base image
FROM node:22-alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json first (for dependency caching)
COPY package*.json ./

# Step 4: Install dependencies (npm install)
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Expose the port on which your app runs (3000)
EXPOSE 3000

# Step 7: Define the command to start your application
CMD ["npm", "start"]
