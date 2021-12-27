#docker build
docker build . -t flaskhost:latest

#docker test
#docker run -p 0.0.0.0:5000:5000 flaskhost:latest

#docker tag for gcr.io
docker tag flaskhost:latest gcr.io/terraform-test-336308/flaskhost:latest

#gcp docker authorization
gcloud auth configure-docker

#docker push to gcr.io
docker push gcr.io/terraform-test-336308/flaskhost:latest

#docker gke create cluster
gcloud container clusters create flaskhost-test --num-nodes=2

#docker gke get credentials
gcloud container clusters get-credentials flaskhost-test

#kubectl create deployment
kubectl create flashost-test --image=gcr.io/terraform-test-336308/flaskhost:latest

#kubectl expose deployment
kubectl expose deployment flaskhost-test --type LoadBalancer --port 5000 --target-port 5000