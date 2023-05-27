help:
	@grep "^[0-9a-zA-Z\.\-]*:" Makefile | grep -v "grep" | sed -e 's/^/make /' | sed -e 's/://'

EC-CUBE4.2.1:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.2.1.tar.gz
	tar -zxvf eccube-4.2.1.tar.gz
	mv ec-cube eccube
	rm eccube-4.2.1.tar.gz
	@echo "\n\n\nEC-CUBE4.2.1 Download Complete!!!\n\n\n"

EC-CUBE4.2.1-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.2.1.tar.gz
	tar -zxvf eccube-4.2.1.tar.gz
	mv ec-cube eccube
	rm eccube-4.2.1.tar.gz
	@echo "\n\n\nEC-CUBE4.2.1 Download Complete!!!\n\n\n"
	make PHP8.1
	make MySQL8.0
	@echo "\n\n\nPHP8.1 MySQL8.0 Setup Complete!!!\n\n\n"

EC-CUBE4.2.0:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.2.0.tar.gz
	tar -zxvf eccube-4.2.0.tar.gz
	mv ec-cube eccube
	rm eccube-4.2.0.tar.gz
	@echo "\n\n\nEC-CUBE4.2.0 Download Complete!!!\n\n\n"

EC-CUBE4.2.0-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.2.0.tar.gz
	tar -zxvf eccube-4.2.0.tar.gz
	mv ec-cube eccube
	rm eccube-4.2.0.tar.gz
	@echo "\n\n\nEC-CUBE4.2.0 Download Complete!!!\n\n\n"
	make PHP8.1
	make MySQL8.0
	@echo "\n\n\nPHP8.1 MySQL8.0 Setup Complete!!!\n\n\n"

EC-CUBE4.1.2-p2:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.1.2-p2.tar.gz
	tar -zxvf eccube-4.1.2-p2.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.2-p2.tar.gz
	@echo "\n\n\nEC-CUBE4.1.2-p2 Download Complete!!!\n\n\n"

EC-CUBE4.1.2-p2-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.1.2-p2.tar.gz
	tar -zxvf eccube-4.1.2-p2.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.2-p2.tar.gz
	@echo "\n\n\nEC-CUBE4.1.2-p2 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.1.2-p1:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.1.2-p1.tar.gz
	tar -zxvf eccube-4.1.2-p1.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.2-p1.tar.gz
	@echo "\n\n\nEC-CUBE4.1.2-p1 Download Complete!!!\n\n\n"

EC-CUBE4.1.2-p1-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.1.2-p1.tar.gz
	tar -zxvf eccube-4.1.2-p1.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.2-p1.tar.gz
	@echo "\n\n\nEC-CUBE4.1.2-p1 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.1.2:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.1.2.tar.gz
	tar -zxvf eccube-4.1.2.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.2.tar.gz
	@echo "\n\n\nEC-CUBE4.1.2 Download Complete!!!\n\n\n"

EC-CUBE4.1.2-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.1.2.tar.gz
	tar -zxvf eccube-4.1.2.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.2.tar.gz
	@echo "\n\n\nEC-CUBE4.1.2 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.1.1:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.1.1.tar.gz
	tar -zxvf eccube-4.1.1.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.1.tar.gz
	@echo "\n\n\nEC-CUBE4.1.1 Download Complete!!!\n\n\n"

EC-CUBE4.1.1-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.1.1.tar.gz
	tar -zxvf eccube-4.1.1.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.1.tar.gz
	@echo "\n\n\nEC-CUBE4.1.1 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.1.0:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.1.0.tar.gz
	tar -zxvf eccube-4.1.0.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.0.tar.gz
	@echo "\n\n\nEC-CUBE4.1.0 Download Complete!!!\n\n\n"

EC-CUBE4.1.0-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.1.0.tar.gz
	tar -zxvf eccube-4.1.0.tar.gz
	mv ec-cube eccube
	rm eccube-4.1.0.tar.gz
	@echo "\n\n\nEC-CUBE4.1.0 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.0.6-p2:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.6-p2.tar.gz
	tar -zxvf eccube-4.0.6-p2.tar.gz
	mv eccube-4.0.6-p2 eccube
	rm eccube-4.0.6-p2.tar.gz
	@echo "\n\n\nEC-CUBE4.0.6-p2 Download Complete!!!\n\n\n"

EC-CUBE4.0.6-p2-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.6-p2.tar.gz
	tar -zxvf eccube-4.0.6-p2.tar.gz
	mv eccube-4.0.6-p2 eccube
	rm eccube-4.0.6-p2.tar.gz
	@echo "\n\n\nEC-CUBE4.0.6-p2 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.0.6-p1:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.6-p1.tar.gz
	tar -zxvf eccube-4.0.6-p1.tar.gz
	mv eccube-4.0.6-p1 eccube
	rm eccube-4.0.6-p1.tar.gz
	@echo "\n\n\nEC-CUBE4.0.6-p1 Download Complete!!!\n\n\n"

EC-CUBE4.0.6-p1-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.6-p1.tar.gz
	tar -zxvf eccube-4.0.6-p1.tar.gz
	mv eccube-4.0.6-p1 eccube
	rm eccube-4.0.6-p1.tar.gz
	@echo "\n\n\nEC-CUBE4.0.6-p1 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.0.6:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.6.tar.gz
	tar -zxvf eccube-4.0.6.tar.gz
	mv eccube-4.0.6 eccube
	rm eccube-4.0.6.tar.gz
	@echo "\n\n\nEC-CUBE4.0.6 Download Complete!!!\n\n\n"

EC-CUBE4.0.6-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.6.tar.gz
	tar -zxvf eccube-4.0.6.tar.gz
	mv eccube-4.0.6 eccube
	rm eccube-4.0.6.tar.gz
	@echo "\n\n\nEC-CUBE4.0.6 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.0.5-p1:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.5-p1.tar.gz
	tar -zxvf eccube-4.0.5-p1.tar.gz
	mv eccube-4.0.5-p1 eccube
	rm eccube-4.0.5-p1.tar.gz
	@echo "\n\n\nEC-CUBE4.0.5-p1 Download Complete!!!\n\n\n"

EC-CUBE4.0.5-p1-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.5-p1.tar.gz
	tar -zxvf eccube-4.0.5-p1.tar.gz
	mv eccube-4.0.5-p1 eccube
	rm eccube-4.0.5-p1.tar.gz
	@echo "\n\n\nEC-CUBE4.0.5-p1 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.0.5:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.5.tar.gz
	tar -zxvf eccube-4.0.5.tar.gz
	mv eccube-4.0.5 eccube
	rm eccube-4.0.5.tar.gz
	@echo "\n\n\nEC-CUBE4.0.5 Download Complete!!!\n\n\n"

EC-CUBE4.0.5-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.5.tar.gz
	tar -zxvf eccube-4.0.5.tar.gz
	mv eccube-4.0.5 eccube
	rm eccube-4.0.5.tar.gz
	@echo "\n\n\nEC-CUBE4.0.5 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.0.4:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.4.tar.gz
	tar -zxvf eccube-4.0.4.tar.gz
	mv eccube-4.0.4 eccube
	rm eccube-4.0.4.tar.gz
	@echo "\n\n\nEC-CUBE4.0.4 Download Complete!!!\n\n\n"

EC-CUBE4.0.4-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.4.tar.gz
	tar -zxvf eccube-4.0.4.tar.gz
	mv eccube-4.0.4 eccube
	rm eccube-4.0.4.tar.gz
	@echo "\n\n\nEC-CUBE4.0.4 Download Complete!!!\n\n\n"
	make PHP7.4
	make MySQL5.7
	@echo "\n\n\nPHP7.4 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.0.3:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.3.tar.gz
	tar -zxvf eccube-4.0.3.tar.gz
	mv eccube-4.0.3 eccube
	rm eccube-4.0.3.tar.gz
	@echo "\n\n\nEC-CUBE4.0.3 Download Complete!!!\n\n\n"

EC-CUBE4.0.3-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.3.tar.gz
	tar -zxvf eccube-4.0.3.tar.gz
	mv eccube-4.0.3 eccube
	rm eccube-4.0.3.tar.gz
	@echo "\n\n\nEC-CUBE4.0.3 Download Complete!!!\n\n\n"
	make PHP7.3
	make MySQL5.7
	@echo "\n\n\nPHP7.3 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.0.2:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.2.tar.gz
	tar -zxvf eccube-4.0.2.tar.gz
	mv eccube-4.0.2 eccube
	rm eccube-4.0.2.tar.gz
	@echo "\n\n\nEC-CUBE4.0.2 Download Complete!!!\n\n\n"

EC-CUBE4.0.2-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.2.tar.gz
	tar -zxvf eccube-4.0.2.tar.gz
	mv eccube-4.0.2 eccube
	rm eccube-4.0.2.tar.gz
	@echo "\n\n\nEC-CUBE4.0.2 Download Complete!!!\n\n\n"
	make PHP7.3
	make MySQL5.7
	@echo "\n\n\nPHP7.3 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.0.1:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.1.tar.gz
	tar -zxvf eccube-4.0.1.tar.gz
	mv eccube-4.0.1 eccube
	rm eccube-4.0.1.tar.gz
	@echo "\n\n\nEC-CUBE4.0.1 Download Complete!!!\n\n\n"

EC-CUBE4.0.1-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.1.tar.gz
	tar -zxvf eccube-4.0.1.tar.gz
	mv eccube-4.0.1 eccube
	rm eccube-4.0.1.tar.gz
	@echo "\n\n\nEC-CUBE4.0.1 Download Complete!!!\n\n\n"
	make PHP7.2
	make MySQL5.7
	@echo "\n\n\nPHP7.2 MySQL5.7 Setup Complete!!!\n\n\n"

EC-CUBE4.0.0:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.0.tar.gz
	tar -zxvf eccube-4.0.0.tar.gz
	mv eccube-4.0.0 eccube
	rm eccube-4.0.0.tar.gz
	@echo "\n\n\nEC-CUBE4.0.0 Download Complete!!!\n\n\n"

EC-CUBE4.0.0-latest:
	curl -vOL https://downloads.ec-cube.net/src/eccube-4.0.0.tar.gz
	tar -zxvf eccube-4.0.0.tar.gz
	mv eccube-4.0.0 eccube
	rm eccube-4.0.0.tar.gz
	@echo "\n\n\nEC-CUBE4.0.0 Download Complete!!!\n\n\n"
	make PHP7.2
	make MySQL5.7
	@echo "\n\n\nPHP7.2 MySQL5.7 Setup Complete!!!\n\n\n"

PHP8.2:
	ln -s Dockerfiles/Dockerfile-php82-apache-bullseye Dockerfile
	@echo "\n\n\nPHP8.2 Setup Complete!!!\n\n\n"

PHP8.1:
	ln -s Dockerfiles/Dockerfile-php81-apache-bullseye Dockerfile
	@echo "\n\n\nPHP8.1 Setup Complete!!!\n\n\n"

PHP8.0:
	ln -s Dockerfiles/Dockerfile-php80-apache-bullseye Dockerfile
	@echo "\n\n\nPHP8.0 Setup Complete!!!\n\n\n"

PHP7.4:
	ln -s Dockerfiles/Dockerfile-php74-apache-bullseye Dockerfile
	@echo "\n\n\nPHP7.4 Setup Complete!!!\n\n\n"

PHP7.3:
	ln -s Dockerfiles/Dockerfile-php73-apache-bullseye Dockerfile
	@echo "\n\n\nPHP7.3 Setup Complete!!!\n\n\n"

PHP7.2:
	ln -s Dockerfiles/Dockerfile-php72-apache-bullseye Dockerfile
	@echo "\n\n\nPHP7.2 Setup Complete!!!\n\n\n"

PHP7.1:
	ln -s Dockerfiles/Dockerfile-php71-apache-bullseye Dockerfile
	@echo "\n\n\nPHP7.1 Setup Complete!!!\n\n\n"

MySQL8.0:
	ln -s DockerCompose/docker-compose.yml-mysql80 docker-compose.yml
	@echo "\n\n\nMySQL8.0 Setup Complete!!!\n\n\n"

MySQL5.7:
	ln -s DockerCompose/docker-compose.yml-mysql57 docker-compose.yml
	@echo "\n\n\nMySQL5.7 Setup Complete!!!\n\n\n"

PostgreSQL14:
	ln -s DockerCompose/docker-compose.yml-postgres14 docker-compose.yml
	@echo "\n\n\nPostgreSQL14 Setup Complete!!!\n\n\n"

PostgreSQL13:
	ln -s DockerCompose/docker-compose.yml-postgres13 docker-compose.yml
	@echo "\n\n\nPostgreSQL13 Setup Complete!!!\n\n\n"

PostgreSQL12:
	ln -s DockerCompose/docker-compose.yml-postgres12 docker-compose.yml
	@echo "\n\n\nPostgreSQL12 Setup Complete!!!\n\n\n"

PostgreSQL11:
	ln -s DockerCompose/docker-compose.yml-postgres11 docker-compose.yml
	@echo "\n\n\nPostgreSQL11 Setup Complete!!!\n\n\n"

PostgreSQL10:
	ln -s DockerCompose/docker-compose.yml-postgres10 docker-compose.yml
	@echo "\n\n\nPostgreSQL10 Setup Complete!!!\n\n\n"

PostgreSQL9:
	ln -s DockerCompose/docker-compose.yml-postgres9 docker-compose.yml
	@echo "\n\n\nPostgreSQL9 Setup Complete!!!\n\n\n"

Initialization:
	-@docker-compose down -v
	sudo rm -rf eccube
	sudo rm -rf root/var
	rm -f docker-compose.yml
	rm -f Dockerfile
	@echo "\n\n\nInitialized\n\n\n"
