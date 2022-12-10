ECCUBE4.2.0:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.2.0/eccube-4.2.0.tar.gz
	tar -zxvf eccube-4.2.0.tar.gz
	mv ec-cube eccube
	rm eccube-4.2.0.tar.gz
	ln -s DockerCompose/docker-compose.yml-mysql80 docker-compose.yml
	ln -s Dockerfiles/Dockerfile-php81-apache-bullseye Dockerfile
	@echo 'complete!!!'

ECCUBE4.1.2:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.1.2/eccube-4.1.2.tar.gz
	tar -zxvf eccube-4.1.2.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.2.tar.gz
	ln -s DockerCompose/docker-compose.yml-mysql57 docker-compose.yml
	ln -s Dockerfiles/Dockerfile-php74-apache-bullseye Dockerfile
	@echo 'complete!!!'

Initialization: eccube docker-compose.yml Dockerfile
	rm -rf eccube
	rm -f docker-compose.yml
	rm -f Dockerfile
	@echo 'complete!!!'