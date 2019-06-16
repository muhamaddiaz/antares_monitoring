FROM composer:latest

WORKDIR /laravel/code

COPY . ./

RUN composer install

EXPOSE 8000

ENTRYPOINT [ "php", "artisan" ]

CMD [ "serve" ]