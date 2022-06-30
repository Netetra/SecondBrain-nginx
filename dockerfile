FROM nginx:1.18.0

RUN apt update -y && apt upgrade -y

#Open port
EXPOSE 80
EXPOSE 443

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
