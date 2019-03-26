kubectl delete  configmap -n database database-getmodel-set 
kubectl delete  configmap -n database database-getmodel-get
kubectl delete  configmap -n database database-getmodel-pack
kubectl delete  configmap -n database database-getmodel-server
kubectl delete  configmap -n database database-getmodel-modelset
kubectl delete  configmap -n database database-getmodel-modelget
kubectl delete -f  ./manifest/deployment.yaml  -n database
#kubectl delete -f  ./manifest/service.yaml  -n database

