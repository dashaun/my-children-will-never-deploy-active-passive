# A Default Story

## Getting Started

1. Clone the repository
    ```shell
    git@github.com:cdcollab/default-story.git
    ```
2. CD into the repository
    ```shell
    cd default-story
    ```
3. Install [vendir](https://carvel.dev/vendir/docs/v0.24.0/install)
4. Download reveal.js
   Setup:
    ```shell
    vendir sync
    mv vendir/reveal.js-4.2.1 .
    rm -rf vendir
    ```
5. Use docker to serve the content
    ```shell
    docker run --name default-story --rm -v $PWD/:/usr/share/nginx/html:ro -d -p 8088:80 nginx
    ``` 
6. Open browser to http://localhost:8088/
