# PodPulse – Containerized Web Application Deployment using Docker and Kubernetes

## Overview
PodPulse is a static web application containerized using Docker and deployed on Kubernetes. This project demonstrates containerization, deployment management, service exposure, scaling, and pod self-healing.

## Tech Stack
- HTML
- Docker
- Nginx
- Kubernetes
- kubectl
- Minikube

## Project Structure
```text
Podpulse/
├── app/
│   └── index.html
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── Dockerfile
├── .dockerignore
└── README.md
Docker commands:
docker build -t podpulse:v1 .
docker run -d -p 8080:80 podpulse:v1
K8s commands:
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl get pods
kubectl get svc
kubectl scale deployment podpulse --replicas=3
kubectl get pods
kubectl delete pod <pod-name>
kubectl get pods -w