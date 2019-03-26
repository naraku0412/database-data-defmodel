kubectl create  configmap -n database database-getmodel-set  --from-file=./scripts/AppSet.java
kubectl create  configmap -n database database-getmodel-get  --from-file=./scripts/AppGet.java
kubectl create  configmap -n database database-getmodel-pack  --from-file=./scripts/pack.sh
kubectl create  configmap -n database database-getmodel-server  --from-file=./scripts/server.js
kubectl create  configmap -n database database-getmodel-modelget  --from-file=./scripts/modelget.sh
kubectl create  configmap -n database database-getmodel-modelset  --from-file=./scripts/modelset.sh
docker build -t gmt.reg.me/frame/maven-getmodel  -f ./Dockerfiles/dockerfile.maven .
docker push gmt.reg.me/frame/maven-getmodel
docker build -t gmt.reg.me/frame/jn-getmodel -f ./Dockerfiles/dockerfile.jdk-node .
docker push gmt.reg.me/frame/jn-getmodel
ansible node -m shell -a "docker pull gmt.reg.me/frame/maven-getmodel"
ansible node -m shell -a "docker pull gmt.reg.me/frame/jn-getmodel"
kubectl create -f  ./manifest/deployment.yaml  -n database
#kubectl create -f  ./manifest/service.yaml  -n database

