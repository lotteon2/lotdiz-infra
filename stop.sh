kubectl delete -f ./kafka/deployment-zookeeper.yml
kubectl delete -f ./kafka/service-zookeeper.yml
kubectl delete -f ./kafka/deployment-kafka.yml
kubectl delete -f ./kafka/service-kafka.yml

kubectl delete -f ./rabbitmq/deployment.yml
kubectl delete -f ./rabbitmq/service.yml

kubectl delete -f ./discovery-service/deployment.yml
kubectl delete -f ./discovery-service/service.yml

kubectl delete -f ./apigateway-service/deployment.yml
kubectl delete -f ./apigateway-service/service.yml

kubectl delete -f ./config-service/deployment.yml
kubectl delete -f ./config-service/service.yml

kubectl delete -f ./admin-service/deployment.yml
kubectl delete -f ./admin-service/service.yml

kubectl delete -f ./funding-service/deployment.yml
kubectl delete -f ./funding-service/service.yml

kubectl delete -f ./member-service/deployment.yml
kubectl delete -f ./member-service/service.yml

kubectl delete -f ./notification-service/deployment.yml
kubectl delete -f ./notification-service/service.yml

kubectl delete -f ./payment-service/deployment.yml
kubectl delete -f ./payment-service/service.yml

kubectl delete -f ./project-service/deployment.yml
kubectl delete -f ./project-service/service.yml