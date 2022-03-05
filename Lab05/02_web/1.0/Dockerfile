FROM nginx:stable

ENV TZ=America/Lima

ADD ./dist /usr/share/nginx/html

ENTRYPOINT ["nginx", "-g", "daemon off;"]
#ENTRYPOINT ["nginx", "-g", "daemon on;"]
#CMD ["nginx", "-g", "daemon off;"]