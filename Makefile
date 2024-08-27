up:
	docker compose up -w --build --force-recreate

test:
	@echo "Initial content of the file:"
	@docker compose exec -it app cat /test

	@echo "\nModifying the file...\n"
	@[ "$(cat test)" = "foo" ] && echo "bar" > test || echo "foo" > test
	@sleep 2

	@echo "Content of the file after modification:"
	@docker compose exec -it app cat /test

.PHONY: up test
