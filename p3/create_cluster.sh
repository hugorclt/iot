# Create cluster
k3d cluster create sleleu -p "8888:30080@loadbalancer" -p "8080:80@loadbalancer"


kubectl create namespace dev

## Install and setup ArgoCD
kubectl create namespace argocd
kubectl apply -n argocd -f ./argocd/install.yaml
kubectl apply -n argocd -f ./argocd/ingress.yaml
kubectl apply -n argocd -f ./argocd/project.yaml
#kubectl apply -n argocd -f ./argocd/app.yaml

## Install and setup dev project
#kubectl apply -f ./dev/deployment-dev.yaml -n dev 

# Get password of admin
#kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath=”{.data.password}” | base64 -d; echo


