# Lab05

## Image

* Limpiar (opcional)
    ```bash
    docker system prune

    sudo dnf install git
    
    git clone https://github.com/mzegarras/tallerdockers.git

    ```


## shell01
    ```bash
    docker build -t shell01 .
    docker build -t shell01 . --progress=plain --no-cache
    docker run shell01
    ```
    * --progress=plain option as docker defaults to auto
    * --no-cache=it is necessary to rebuild the container

## shell02
    ```bash
    docker build -t shell02 -f Dockerfile02 .
    docker run shell02
    docker run -d shell02

    docker exec -it <<pid>> sh
    ps
    kill -9 <<pid sh>>
    ```

## shell03
    ```bash
    docker build -t shell03 -f Dockerfile03 .
    docker run shell03

    docker build -t shell03 -f Dockerfile03 . --progress=plain --no-cache
    docker run shell03
    ```

## shell04
    ```bash
    RUN chmod +x ./app.sh
    ```

    ```bash
    docker build -t shell04 -f Dockerfile04 .
    docker run -e NAME="sss" shell04
    ```

## shell05

    ```bash
    # Instalar prerequisitos
    #RUN apk add curl
    #RUN apk update && apk add curl
    ```

    ```bash
    docker build -t shell05 -f Dockerfile05 .
    docker run shell05
    ```

## shell06

    ```bash
    docker build -t shell06 -f Dockerfile06 .
    docker run shell06
    ```

## shell07
* /opt/APP01

    ```bash
    docker build -t shell07 \
    --build-arg PATH_APPS=/opt \
    --build-arg NAME_APP=APP01  \
    -f Dockerfile07 .
    docker run shell07
    ```

* /opt/APP02

    ```bash
    docker build -t shell07 \
    --build-arg PATH_APPS=/opt \
    --build-arg NAME_APP=APP01  \
    -f Dockerfile07 .
    docker run shell07
    ```

## web01a
    ```bash
    cd ./Lab05/02_web/1.0
    docker build -t web01a .
    docker run -p 8080:80 web01a
    ```

## web01b
    ```bash
    cd ./Lab05/02_web/1.1
    docker build -t web01b -f Dockerfile01 . --progress=plain --no-cache
    docker run -p 8080:80 web01b
    ```

## web01c

    ```bash
     # Comprimir
    tar -czf dist.tgz ./dist
    tar -xvf dist.tgz
    ```

    ```bash
    docker build -t web01c -f Dockerfile02 . --progress=plain --no-cache
    docker run -p 8080:80 web01c
    ```

## web02
    ```bash
    cd ./Lab05/02_web/2.0
    docker build -t web02 -f Dockerfile . --progress=plain --no-cache
    docker run -p 8080:8085 web02
    ```
## Java
    ```bash
    cd ./Lab05/03_java/1.1
    docker build -t java01 .
    docker run -p 8080:8085 web01
    ```

* Java
    ```bash
    docker build -t java01 .
    docker run -p 8080:8085 web01
    ```

    ```bash
    curl http://localhost:8080/customers
    ```

* Node


|Command    |Descripcion|Obligatorio|
|-----------|-----------|-----------|
|FROM       |Imagen base para construir la imagen|SI|
|CMD	    |Ejecuta el comando que inicia el container|SI|
|ENTRYPOINT |Ejecuta el comando que inicia el container|SI|
|MAINTAINER |Quien mantiene le Dockerfile|SI
|ENV |Definir variable de entorno|NO
|RUN |Ejecuta un comando y graba en resultado|NO
|ADD |Copias archivos a la imagen|NO
|EXPOSE|Abre puerto para abrir el container|NO
|WORKDIR|Directorio de trabajo|NO

1. CMD echo “Hello World” (shell estilo)
1. CMD ["echo", "Hello World"] (exec estilo)
1. ENTRYPOINT echo "Hello World" (shell estilo)
1. ENTRYPOINT ["echo", "Hello World"] (exec estilo)



apt-get update
apt-get install -y curl



sudo apt-get install -y curl
sudo docker run -it ubuntu /bin/sh