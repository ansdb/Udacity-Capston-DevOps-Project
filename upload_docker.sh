# upload docker image to docker hub public repositories

# step 1: create path

dockerpath=ansdb/some-nginx

#step 2: authenticate & tag image

cat ../ps.txt | docker login --username ansdb --password-stdin &&\
    docker tag some-nginx $dockerpath
    
# step 3: push image to docker hub public repositories

docker image push $dockerpath