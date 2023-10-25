kubectl create -f ./kafka/dev/deployment-zookeeper.yml
kubectl create -f ./kafka/dev/service-zookeeper.yml

while ! kubectl get services zookeeper-service &> /dev/null; do 
  echo "Waiting for zookeeper-service to become available..."
  sleep 5
done

kubectl create -f ./kafka/dev/deployment-kafka.yml
kubectl create -f ./kafka/dev/service-kafka.yml

while ! kubectl get services kafka-service &> /dev/null; do
  echo "Waiting for kafka-service to become available..."
  sleep 5
done

kubectl create -f ./rabbitmq/dev/deployment.yml
kubectl create -f ./rabbitmq/dev/service.yml

while ! kubectl get services rabbitmq-service &> /dev/null; do
  echo "Waiting for rabbitmq-service to become available..."
  sleep 5
done

kubectl create -f ./discovery-service/deployment.yml
kubectl create -f ./discovery-service/service.yml

while ! kubectl get services discovery-service &> /dev/null; do
  echo "Waiting for discovery-service to become available..."
  sleep 5
done

kubectl create configmap lotdiz-config --from-env-file=./config-service/.env
kubectl create -f ./config-service/deployment.yml
kubectl create -f ./config-service/service.yml

while ! kubectl get services config-service &> /dev/null; do
  echo "Waiting for config-service to become available..."
  sleep 5
done

kubectl create -f ./apigateway-service/deployment.yml
kubectl create -f ./apigateway-service/service.yml

while ! kubectl get services apigateway-service &> /dev/null; do
  echo "Waiting for apigateway-service to become available..."
  sleep 5
done

kubectl create -f ./admin-service/initdb-config.yml
kubectl create -f ./admin-service/deployment.yml
kubectl create -f ./admin-service/service.yml

kubectl create -f ./funding-service/initdb-config.yml
kubectl create -f ./funding-service/deployment.yml
kubectl create -f ./funding-service/service.yml

kubectl create -f ./member-service/initdb-config.yml
kubectl create -f ./member-service/deployment.yml
kubectl create -f ./member-service/service.yml

kubectl create -f ./notification-service/initdb-config.yml
kubectl create -f ./notification-service/deployment.yml
kubectl create -f ./notification-service/service.yml

kubectl create -f ./delivery-service/initdb-config.yml
kubectl create -f ./delivery-service/deployment.yml
kubectl create -f ./delivery-service/service.yml

kubectl create -f ./payment-service/initdb-config.yml
kubectl create -f ./payment-service/deployment.yml
kubectl create -f ./payment-service/service.yml

kubectl create -f ./project-service/initdb-config.yml
kubectl create -f ./project-service/deployment.yml
kubectl create -f ./project-service/service.yml
