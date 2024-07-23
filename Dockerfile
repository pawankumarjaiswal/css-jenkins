FROM ubuntu

USER root

RUN apt update && \
    apt install -y apache2 unzip curl && \
    curl -O https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip && \
    unzip healet.zip && \
    cp -r healet-html/* /var/www/html/ && \
    rm -rf healet.zip healet-html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
