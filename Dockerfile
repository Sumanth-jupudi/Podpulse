# Use the official Nginx image
FROM nginx:alpine

# Copy the static HTML files to the Nginx directory
COPY . /usr/share/nginx/html
EXPOSE 80