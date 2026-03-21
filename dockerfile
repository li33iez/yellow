FROM nginx:latest

WORKDIR /home/ec2-user/app


COPY index.html /usr/share/nginx/html



CMD ["nginx", "-g", "daemon off;"]
