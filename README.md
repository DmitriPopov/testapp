# README

1. Build containers

docker-compose build

2. Run contaiers

docker-compose up

3. Create database

docker-compose run web rake db:create

4. Run migrations

docker-compose run web rake db:migrate

5. Seed database with Wiki data

docker-compose run web rake db:seed

6. Test API

GET http://localhost:3000/medical_procedures?searchquery=test