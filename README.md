# System-monitoring-app
Dockerized Flask app deployed on Kubernetes (Minikube) with AWS ECR integration
A containerized system monitoring web application built with Flask, deployed on Kubernetes (Minikube) using Docker, and integrated with AWS ECR for cloud-ready image storage.

This project demonstrates an end-to-end DevOps workflow from local development to Kubernetes orchestration.

📌 Features

📊 CPU and Memory utilization dashboard

🐳 Dockerized Flask application

☸️ Deployed on Kubernetes using Minikube

📦 Declarative Kubernetes manifests (Deployment & Service)

☁️ Docker image pushed to AWS ECR

🔁 Production-style DevOps workflow

🛠 Tech Stack
Category	Technology
Backend	Python, Flask
Frontend	HTML, Jinja2, Plotly
Containerization	Docker
Orchestration	Kubernetes (Minikube)
Cloud Registry	AWS ECR
OS / Runtime	Linux (WSL), Docker Desktop
## 📁 Project Structure

```text
system-monitoring-devops/
├── app.py
├── requirements.txt
├── Dockerfile
├── ecr.py
├── templates/
│   └── index.html
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
└── README.md


⚙️ Application Overview

The Flask application collects system metrics (CPU & memory) using psutil and visualizes them using Plotly gauges.
The app runs inside a Docker container and is deployed on Kubernetes using Minikube.

🐳 Docker Setup
Build Docker Image
docker build -t first-app .

Verify Image
docker images

☸️ Kubernetes Deployment (Minikube)
Start Minikube
minikube start

Load Docker Image into Minikube
minikube image load first-app:latest

Deploy Application
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

Verify Resources
kubectl get pods
kubectl get svc


Pods should be in Running state.

🌐 Access the Application
minikube service first-app


Minikube opens the application in the browser via a local tunnel.

⚠️ When using the Docker driver, the terminal must remain open for the service tunnel.

📦 Kubernetes Manifests
Deployment

Uses local Docker image

imagePullPolicy: Never to avoid registry pulls

Easily scalable with replicas

Service

NodePort service

Exposes Flask app on port 5000

☁️ AWS ECR Integration

Docker image pushed to AWS Elastic Container Registry

Enables seamless deployment to EKS / EC2 / ECS in production

Local Minikube used for development to avoid cloud costs

🧠 Key Learnings

Difference between local Docker and Kubernetes runtimes

How Minikube handles container images

Debugging ErrImagePull issues

Converting imperative kubectl commands to declarative YAML

Cost-aware DevOps decision-making
