kubectl delete -f ./kafka/dev/deployment-zookeeper.yml
kubectl delete -f ./kafka/dev/service-zookeeper.yml
kubectl delete -f ./kafka/dev/deployment-kafka.yml
kubectl delete -f ./kafka/dev/service-kafka.yml

kubectl delete -f ./rabbitmq/dev/deployment.yml
kubectl delete -f ./rabbitmq/dev/service.yml

kubectl delete -f ./discovery-service/deployment.yml
kubectl delete -f ./discovery-service/service.yml

kubectl delete -f ./config-service/deployment.yml
kubectl delete -f ./config-service/service.yml
kubectl delete configmap lotdiz-config

kubectl delete -f ./apigateway-service/deployment.yml
kubectl delete -f ./apigateway-service/service.yml

kubectl delete -f ./admin-service/deployment.yml
kubectl delete -f ./admin-service/service.yml
kubectl delete -f ./admin-service/initdb-config.yml

kubectl delete -f ./funding-service/deployment.yml
kubectl delete -f ./funding-service/service.yml
kubectl delete -f ./funding-service/initdb-config.yml

kubectl delete -f ./member-service/deployment.yml
kubectl delete -f ./member-service/service.yml
kubectl delete -f ./member-service/initdb-config.yml

kubectl delete -f ./notification-service/deployment.yml
kubectl delete -f ./notification-service/service.yml
kubectl delete -f ./notification-service/initdb-config.yml

kubectl delete -f ./delivery-service/deployment.yml
kubectl delete -f ./delivery-service/service.yml
kubectl delete -f ./delivery-service/initdb-config.yml

kubectl delete -f ./payment-service/deployment.yml
kubectl delete -f ./payment-service/service.yml
kubectl delete -f ./payment-service/initdb-config.yml

kubectl delete -f ./project-service/deployment.yml
kubectl delete -f ./project-service/service.yml
kubectl delete -f ./project-service/initdb-config.yml
