# Step 1:

dockerpath=ansdb/some-nginx

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run static-html-nginx --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 120
kubectl port-forward static-html-nginx 8001:80