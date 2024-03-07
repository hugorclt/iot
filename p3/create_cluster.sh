# Create cluster
k3d cluster create sleleu

# Create namespaces
kubectl create namespace argocd
kubectl create namespace dev

# Install argocd (-n is for applying to)
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Apply ingress on argocd namespace
kubectl apply -f ingress_argocd.yaml -n argocd

# Get password of admin
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath=”{.data.password}” | base64 -d; echo
