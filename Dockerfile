
# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Set environment variables for n8n
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production

# Expose n8n's port
EXPOSE 10000

# Start n8n
CMD ["n8n", "start"]

