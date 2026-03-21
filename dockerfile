FROM nginx:latest

WORKDIR /app


COPY index.html /usr/share/nginx/html
COPY . .


CMD ["nginx", "-g", "daemon off;"]
