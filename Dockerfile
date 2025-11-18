FROM node:18-alpine
RUN npm install -g json-server
COPY db.json /data/db.json
CMD ["json-server", "--host", "0.0.0.0", "--port", "3000", "--watch", "/data/db.json"]
