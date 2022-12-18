ECCUBE4.2.0:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.2.0/eccube-4.2.0.tar.gz
	tar -zxvf eccube-4.2.0.tar.gz
	mv ec-cube eccube
	rm eccube-4.2.0.tar.gz
	@echo "\n\n\nECCUBE4.2.0 Download Complete!!!"

ECCUBE4.1.2:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.1.2/eccube-4.1.2.tar.gz
	tar -zxvf eccube-4.1.2.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.2.tar.gz
	@echo "\n\n\nECCUBE4.1.2 Download Complete!!!"

ECCUBE4.1.1:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.1.1/eccube-4.1.1.tar.gz
	tar -zxvf eccube-4.1.1.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.1.tar.gz
	@echo "\n\n\nECCUBE4.1.1 Download Complete!!!"

ECCUBE4.1.0:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.1.0/eccube-4.1.0.tar.gz
	tar -zxvf eccube-4.1.0.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.0.tar.gz
	@echo "\n\n\nECCUBE4.1.0 Download Complete!!!"
	
ECCUBE4.0.6-p1:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.0.6-p1/eccube-4.0.6-p1.tar.gz
	tar -zxvf eccube-4.0.6-p1.tar.gz
	mv eccube-4.0.6-p1 eccube
	rm eccube-4.0.6-p1.tar.gz
	@echo "\n\n\nECCUBE4.0.6-p1 Download Complete!!!"

ECCUBE4.0.6:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.0.6/eccube-4.0.6.tar.gz
	tar -zxvf eccube-4.0.6.tar.gz
	mv eccube-4.0.6 eccube
	rm eccube-4.0.6.tar.gz
	@echo "\n\n\nECCUBE4.0.6 Download Complete!!!"

ECCUBE4.0.5-p1:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.0.5-p1/eccube-4.0.5-p1.tar.gz
	tar -zxvf eccube-4.0.5-p1.tar.gz
	mv eccube-4.0.5-p1 eccube
	rm eccube-4.0.5-p1.tar.gz
	@echo "\n\n\nECCUBE4.0.5-p1 Download Complete!!!"

ECCUBE4.0.5:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.0.5/eccube-4.0.5.tar.gz
	tar -zxvf eccube-4.0.5.tar.gz
	mv eccube-4.0.5 eccube
	rm eccube-4.0.5.tar.gz
	@echo "\n\n\nECCUBE4.0.5 Download Complete!!!"

ECCUBE4.0.4:
	curl -vOL https://github.com/EC-CUBE/ec-cube/releases/download/4.0.4/eccube-4.0.4.tar.gz
	tar -zxvf eccube-4.0.4.tar.gz
	mv ec-cube eccube
	rm eccube-4.0.4.tar.gz
	@echo "\n\n\nECCUBE4.0.4 Download Complete!!!"

ECCUBE4.0.3:
	curl -vOL https://github.com/EC-CUBE/ec-cube/archive/refs/tags/4.0.3.tar.gz
	tar -zxvf 4.0.3.tar.gz
	mv ec-cube-4.0.3 eccube
	rm 4.0.3.tar.gz
	@echo "\n\n\nECCUBE4.0.3 Download Complete!!!"

PHP8.1:
	ln -s Dockerfiles/Dockerfile-php81-apache-bullseye Dockerfile
	@echo "\n\n\nPHP8.1 Download Complete!!!"

PHP8.0:
	ln -s Dockerfiles/Dockerfile-php80-apache-bullseye Dockerfile
	@echo "\n\n\nPHP8.0 Download Complete!!!"

PHP7.4:
	ln -s Dockerfiles/Dockerfile-php74-apache-bullseye Dockerfile
	@echo "\n\n\nPHP7.4 Download Complete!!!"

PHP7.3:
	ln -s Dockerfiles/Dockerfile-php73-apache-bullseye Dockerfile
	@echo "\n\n\nPHP7.3 Download Complete!!!"

PHP7.2:
	ln -s Dockerfiles/Dockerfile-php72-apache-bullseye Dockerfile
	@echo "\n\n\nPHP7.2 Download Complete!!!"

PHP7.1:
	ln -s Dockerfiles/Dockerfile-php71-apache-bullseye Dockerfile
	@echo "\n\n\nPHP7.1 Download Complete!!!"

MySQL8.0:
	ln -s DockerCompose/docker-compose.yml-mysql80 docker-compose.yml
	@echo "\n\n\nMySQL8.0 Download Complete!!!"

MySQL5.7:
	ln -s DockerCompose/docker-compose.yml-mysql57 docker-compose.yml
	@echo "\n\n\nMySQL5.7 Download Complete!!!"

PostgreSQL14:
	ln -s DockerCompose/docker-compose.yml-postgres14 docker-compose.yml
	@echo "\n\n\nPostgreSQL14 Download Complete!!!"

PostgreSQL13:
	ln -s DockerCompose/docker-compose.yml-postgres13 docker-compose.yml
	@echo "\n\n\nPostgreSQL13 Download Complete!!!"

PostgreSQL12:
	ln -s DockerCompose/docker-compose.yml-postgres12 docker-compose.yml
	@echo "\n\n\nPostgreSQL12 Download Complete!!!"

PostgreSQL11:
	ln -s DockerCompose/docker-compose.yml-postgres11 docker-compose.yml
	@echo "\n\n\nPostgreSQL11 Download Complete!!!"

PostgreSQL10:
	ln -s DockerCompose/docker-compose.yml-postgres10 docker-compose.yml
	@echo "\n\n\nPostgreSQL10 Download Complete!!!"

PostgreSQL9:
	ln -s DockerCompose/docker-compose.yml-postgres9 docker-compose.yml
	@echo "\n\n\nPostgreSQL9 Download Complete!!!"

Initialization:
	-@docker-compose down
	rm -rf eccube
	rm -f docker-compose.yml
	rm -f Dockerfile
	@echo "\n\n\nInitialization complete\n"