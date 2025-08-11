FROM node:18-alpine

ENV NODE_ENV=production \
    N8N_PORT=5678 \
    GENERIC_TIMEZONE=Asia/Kolkata

# Create app directory for n8n data
WORKDIR /home/node

# Install n8n globally
RUN npm install -g n8n

# Create folder for persistent data (Render disk will mount here)
RUN mkdir .n8n

# Use non-root user for security
USER node

# Expose n8n port
EXPOSE 5678

# Start n8n
ENTRYPOINT ["n8n"]
CMD ["start"]
