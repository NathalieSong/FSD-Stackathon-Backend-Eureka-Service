docker-compose down
docker image rm emart-eureka-service
docker build . -t emart-eureka-service
docker-compose up -d