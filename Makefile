.PHONY: docs

docs:
	sourcedocs generate --spm-module System --output-folder docs --clean
	sourcedocs package -o docs

lint:
	swiftlint autocorrect --format --quiet
	swiftlint lint --quiet --strict

dockertest:
	docker build -f Dockerfile -t linuxtest .
	docker run linuxtest
