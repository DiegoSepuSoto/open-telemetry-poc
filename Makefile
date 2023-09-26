jaeger-local:
	@docker run --rm --name jaeger -d -p 16686:16686 -p 4317:4317 jaegertracing/all-in-one:1.49

start:
	@docker-compose pull && docker-compose up -d

stop:
	@docker-compose down

.PHONY: start stop