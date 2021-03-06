# Lab06

### Tag images

* Limpiar (opcional)
    ```bash
    docker system prune
    ```

*  Generar website:1.0.0
    ```bash
    docker build -t website -f ./1.0/Dockerfile ./1.0/
    docker build -t website .
    docker build -t website:latest .
    docker build -t website:1.0.0 .

    docker tag website:latest website:1.0.0
    docker tag website:latest mzegarra/website:1.0.0

    docker push mzegarra/website:1.0.0

    docker build -t website -f ./2.0/Dockerfile ./2.0/
    docker build -t modventas:2.0.0 .
    docker tag modventas:2.0.0 mzegarra/modventas:2.0.0
    docker tag modventas:2.0.0 mzegarra/modventas:latest

    docker tag website:latest website:2.0.0
    docker tag website:latest mzegarra/website:2.0.0
    docker tag website:latest mzegarra/website:latest

    docker push mzegarra/website:2.0.0
    docker push mzegarra/website:latest

    ```

* Docker hub login
    ```bash
    docker login docker.io
    <<user>>/<<repository name>>:<<tag>>
    ```

* Push Azure Registry
    ```bash
    docker login galaxytrainingdev.azurecr.io -u galaxytrainingdev
    lN=1BLwPdZ69WdE0FgvpM3eL77ZG77fM
    
    <<url repository>>/<<repository name>>:<<tag>>

    docker tag website:latest galaxytrainingdev.azurecr.io/website_zegarra:1.0.0
    docker tag website:latest galaxytrainingdev.azurecr.io/website_zegarra:1.0.0

    docker tag modventas:2.0.0 galaxytraining01.azurecr.io/modventas:mzegarra
    docker push galaxytrainingdev.azurecr.io/website_zegarra:1.0.0

    ```

* Push Google Container Registry
    ```bash

    docker tag website:latest gcr.io/csonic-labs/website:1.0.0
    docker push gcr.io/csonic-labs/website:1.0.0

    docker tag website:latest gcr.io/csonic-labs/website:2.0.0
    docker push gcr.io/csonic-labs/website:2.0.0

    gcloud auth login

    gcloud auth print-access-token
  
    docker login -u oauth2accesstoken -p "token!!" https://gcr.io

    docker push gcr.io/csonic-labs/website:1.0.0

    where [HOSTNAME] is gcr.io, us.gcr.io, eu.gcr.io, or asia.gcr.io.
    ```



* Pull images
    ```bash

    docker pull mzegarra/website:2.0.0
    docker pull docker pull gcr.io/csonic-labs/website:2.0.0
    docker pull gcr.io/csonic-labs/website:2.0.0

    ```
