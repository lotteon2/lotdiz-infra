# lotdiz-infra

## 개발(로컬) 환경

### 모두 실행

```shell
sh ./start.sh
```

### 모두 종료

```shell
sh ./stop.sh
```

### APIGATEWAY port forwarding

1. apigateway pod을 찾는다.

```shell
kubectl get pods
```

2. pod을 포트포워딩

```shell
kubectl port-forward [PORT_NAME] 8000:8000
```

## 운영 환경

### Fargate EKS Cluster 구축

1. EKS 클러스터 생성

```shell
eksctl create cluster --name <CLUSTER_NAME> --region <REGION_NAME> --fargate
```

2. AWS 로그인 - 아래 커맨드 입력 후 ACCESS_KEY, SECRET_ACCESS_KEY 입력

```shell
aws configure
```

3. EKS Cluster 사용을 위한 kubeconfig 파일 업데이트

```shell
aws eks update-kubeconfig --region <REGION_NAME> --name <CLUSTER_NAME>
```

4. 로그 라우터 구성

```shell
kubectl apply -f aws-observability-namespace.yaml
```

5. CloudWatch ConfigMap 생성

```shell
kubectl apply -f aws-logging-cloudwatch-configmap.yaml
```

6. IAM OIDC ID 제공업체 생성

[바로가기](https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/enable-iam-roles-for-service-accounts.html)

7. AWS Load Balancer Controller 설치

[바로가기](https://docs.aws.amazon.com/ko_kr/eks/latest/userguide/aws-load-balancer-controller.html)

8. 원하는 리소스 생성

### ETC

- kubeconfig docker-desktop으로 변경

```shell
kubectl config use-context docker-desktop
```