# Create cluster
k3d cluster create sleleu -p "8080:80@loadbalancer" -p "8888:30080@loadbalancer" 
kubectl create namespace dev
kubectl create namespace argocd
kubectl apply -n argocd -f ./argocd/install.yaml
kubectl apply -n argocd -f ./argocd/ingress.yaml
kubectl apply -n argocd -f ./argocd/app.yaml
kubectl apply -n argocd -f ./argocd/project.yaml


kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo

