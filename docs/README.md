1. 
    ```shell
    docker run --name kcjug --rm -v $PWD/:/usr/share/nginx/html:ro -d -p 8088:80 nginx
    ``` 
2. Open browser to http://localhost:8088/
