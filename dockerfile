FROM nginx:latest
RUN sed -i 's/nginx/issam/g' /usr/share/nginx/html/index.html
EXPOSE 80