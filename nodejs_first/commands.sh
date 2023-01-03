sudo docker build . -t nodejsfirst

sudo docker run -p 49160:8080 -d nodejsfirst

sudo docker kill <container_id>

sudo docker push rgirodon/nodejsfirst

kubectl create deployment rgirodonnodejsfirst --image=rgirodon/nodejsfirst

kubectl expose deployment rgirodonnodejsfirst --type=NodePort --port=8080

kubectl get services

# access service
minikube service rgirodonnodejsfirst

# or
kubectl port-forward svc/rgirodonnodejsfirst 8080:8080

# test with nginx image
kubectl create deployment my-nginx --image nginx

kubectl expose deployment my-nginx --port=80 --type=NodePort

kubectl port-forward svc/my-nginx 8080:80

# deploy with yaml
kubectl apply -f deployment.yml

# expose with yaml
kubectl apply -f service.yml

kubectl port-forward svc/rgirodonnodejsfirst-service  8080:80