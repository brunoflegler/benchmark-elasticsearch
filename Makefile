benchmark:
	@docker-compose up -d --build --remove-orphans benchmark
.PHONY: benchmark

elasticsearch:
	@docker-compose up -d elasticsearch
.PHONY: elasticsearch

stop:
	@docker-compose stop
.PHONY: stop

down:
	@docker-compose down
.PHONY: down

prepare: elasticsearch benchmark
.PHONY: prepare