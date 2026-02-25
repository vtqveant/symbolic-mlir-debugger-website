# Use official nginx alpine image
FROM nginx:alpine

# Install curl for health checks
RUN apk add --no-cache curl

# Remove default nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy website files
COPY index.html /usr/share/nginx/html/
COPY agents-dark-factories.html /usr/share/nginx/html/
COPY mlir-debugger.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Create a simple health check script
RUN echo '#!/bin/sh\ncurl -f http://localhost/health || exit 1' > /healthcheck.sh && chmod +x /healthcheck.sh

# Expose port 80
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD /healthcheck.sh

# Start nginx
CMD ["nginx", "-g", "daemon off;"]