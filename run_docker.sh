# step 1: build the image

docker build -t static-html-nginx .

#step 2: run the container

docker run --name some-nginx -d -p 8000:80 static-html-nginx

