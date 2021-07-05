install:
	docker-compose run --rm web bash -c "bundle install"

lint:
	docker-compose run --rm web bash -c "bundle exec rubocop -a"

tests:
	docker-compose run --rm web bash -c "rails test"

migrate:
	docker-compose run --rm web bash -c "rails db:migrate"

start:
	docker-compose up

console:
	docker-compose run --rm web bash -c "rails console"

bash:
	docker-compose run --rm --service-ports web /bin/bash

.PHONE: lint
