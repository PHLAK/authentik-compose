init initialize:
	@cp --interactive --verbose .skeleton/environment.d/*.env environment.d/ || true
	@cp --interactive --verbose .skeleton/.env . || true

update:
	@git pull --ff-only
	@docker compose up --detach --pull always
