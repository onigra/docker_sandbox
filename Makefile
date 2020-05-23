build-ssh:
	docker build --ssh default -f Dockerfile.ssh -t build-ssh . 

build-secret:
	docker build --secret id=ssh,src=$(HOME)/.ssh/gitlab.com/id_ed25519 -f Dockerfile.secret -t build-secret . 
