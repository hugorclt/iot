apt update
apt install curl -y
apt install net-tools -y
curl -sfL https://get.k3s.io | K3S_URL=https://192.168.56.110:6443 K3S_TOKEN=12345 INSTALL_K3S_EXEC='--flannel-iface=eth1' sh -
