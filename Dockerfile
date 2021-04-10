FROM	debian:buster

LABEL	maintainer="seujeong <seujeong.student.42seoul.kr>"

RUN		apt-get update && apt-get upgrade && apt-get -y install\
		nginx\
		openssl\
		vim\
		php7.3-fpm\
		mariadb-server\
		php-mysql\
		wget

COPY	./srcs/run.sh ./
COPY	./srcs/config.inc.php ./tmp
COPY	./srcs/default ./tmp
COPY	./srcs/wp-config.php ./tmp

EXPOSE	80 443

CMD		bash run.sh
