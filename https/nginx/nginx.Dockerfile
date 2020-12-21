FROM nginx:stable
MAINTAINER Nathan Lam

# Copy nginx config
RUN rm /etc/nginx/conf.d/default.conf
COPY proxy-v2ray.conf /etc/nginx/conf.d/proxy-v2ray.conf
COPY error_cat.conf /etc/nginx/conf.d/error_cat.conf
RUN mkdir /etc/nginx/certs
COPY 1122tk.crt /etc/nginx/certs/1122tk.crt
COPY 1122tk.key /etc/nginx/certs/1122tk.key
