docker build -t springcloud/eureka:1.9.3 -f eureka.Dockerfile .
docker run -d --rm --name eureka -p 8761:8761 springcloud/eureka:1.9.3