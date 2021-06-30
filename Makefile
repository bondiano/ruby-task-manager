lint:
	docker-compose run --rm web bash -c "bundle exec rubocop -a"

migrate:
	docker-compose run --rm web bash -c "rails db:migrate"

start:
	docker-compose up

console:
	docker-compose run --rm web bash -c "rails console"

bash:
	docker-compose run --rm --service-ports web /bin/bash

.PHONE: lint
