start: ## Start all services
 	# docker compose up --build -
	docker compose up -d

stop: ## Stop all services
	docker compose down

# restart: ## Restart all services
# 	docker compose restart

pull-model: ## Execute a command in a running container and update the model name as needed	
	@model="tinyllama"; \
	docker exec -it ollama ollama pull $$model

list-models: ## List available models
	docker exec -it ollama ollama list
# 	curl http://localhost:11434/v1/models  # alternative way to list models
