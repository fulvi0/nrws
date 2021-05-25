FROM nginx
RUN apt update \
    && apt install -y iputils-ping net-tools


RUN rm /etc/nginx/conf.d/default.conf

VOLUME [ "/etc/nginx/conf.d/" ]

COPY nginx.conf /etc/nginx/conf.d/default.conf