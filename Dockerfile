
# Use official Nginx image
FROM nginx:alpine

# Remove default nginx HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom HTML page into the container
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
