# Use a minimal Nginx image
FROM nginx:alpine

# Copy static files to the default Nginx public directory
COPY index.html /usr/share/nginx/html/index.html
COPY app.css /usr/share/nginx/html/app.css

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"] 