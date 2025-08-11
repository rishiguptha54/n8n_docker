FROM node:18-alpine

ENV NODE_ENV=production \
    N8N_PORT=5678 \
    N8N_BASIC_AUTH_ACTIVE=false \
    N8N_EDITOR_BASE_URL=http://localhost:5678 \
    GENERIC_TIMEZONE=Asia/Kolkata

WORKDIR /data

RUN npm install -g n8n

EXPOSE 5678

CMD ["n8n", "start"]
