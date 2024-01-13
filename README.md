```
cp .env.example .env

sudo docker-compose up -d

sudo docker exec app composer-install

sudo docker exec php artisan key:generate
```