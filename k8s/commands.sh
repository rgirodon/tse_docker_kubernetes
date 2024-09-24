docker build . -t rgirodon/nodejs_helloword

docker run -p 8080:8080 -d rgirodon/nodejs_helloword

# docker push rgirodon/nodejs_helloword
minikube image load rgirodon/nodejs_helloword

# deploy with yaml
minikube kubectl -- apply -f deployment.yml

# expose with yaml
minikube kubectl --  apply -f service.yml

# port forward service
minikube kubectl -- port-forward svc/rgirodon-nodejs-helloworld-service 8080:8080