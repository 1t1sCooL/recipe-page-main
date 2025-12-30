FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY /assets/images/image-omelette.jpeg /usr/share/nginx/html//assets/images/
COPY /assets/images/favicon-32x32.png /usr/share/nginx/html//assets/images/
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
