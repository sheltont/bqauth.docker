FROM nginx

RUN rm /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/sites-available/default

COPY bqauth_nginx.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/bqauth_nginx.conf /etc/nginx/sites-enabled/bqauth_nginx.conf

CMD service nginx restart
