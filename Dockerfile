FROM php:8.1-cli

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y unzip php-curl php-xml php-mbstring

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "."]

