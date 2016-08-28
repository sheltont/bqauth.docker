FROM nginx

RUN rm -f /etc/nginx/conf.d/default.conf
RUN rm -f /etc/nginx/conf.d/example_ssl.conf

COPY bqauth_nginx.conf /etc/nginx/conf.d/default.conf

CMD service nginx restart
