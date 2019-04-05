FROM centos:latest

RUN yum install -y epel-release
RUN yum install -y nginx
RUN yum install -y git

WORKDIR /usr/share/nginx/html
RUN git clone https://github.com/sombrero104/Fastcampus-web-deploy.git

# COPY ./ /usr/share/nginx/html/Fastcampus-web-deploy
COPY ./nginx.conf /etc/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

