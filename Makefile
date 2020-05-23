build-ssh:
	docker build --ssh default -f ssh/Dockerfile -t build-ssh .

build-secret:
	docker build --secret id=ssh,src=$(HOME)/.ssh/gitlab.com/id_ed25519 -f secret/Dockerfile -t build-secret .
