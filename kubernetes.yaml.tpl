apiVersion: apps/v1
kind: Deployment
metadata:
  name: backend-app-deployment
  labels:
    app: backend-app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: backend-app
  template:
    metadata:
      labels:
        app: backend-app
    spec:
      containers:
      - name: backend-app
        image: DOCKER_IMG
        ports:
        - containerPort: APP_PORT
---
kind: Service
apiVersion: v1
metadata:
  name: backend-service-new
spec:
  selector:
    app: backend-app
  ports:
  - protocol: TCP
    port: 80
    targetPort: APP_PORT
  type: LoadBalancer