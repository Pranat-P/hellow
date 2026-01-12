FROM nginx:alpine

# Remove default nginx config and html
RUN rm -rf /etc/nginx/nginx.conf /usr/share/nginx/html/*

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static HTML
COPY index.html /usr/share/nginx/html/index.html

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
