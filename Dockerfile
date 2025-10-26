# Use a lightweight Nginx image
FROM nginx:alpine

# Copy all project files to Nginx's html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
