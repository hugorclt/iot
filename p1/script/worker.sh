SERVER_IP="192.168.56.110"
SERVER_TOKEN_PATH="/var/lib/rancher/k3s/server/node-token"
LOCAL_TOKEN_PATH="/home/vagrant/"


apt update
apt install curl -y
apt install net-tools -y

# Copy the access token from the server node
mkdir -p "/home/vagrant/"

echo "Fetching token."
until scp vagrant@${SERVER_IP}:${SERVER_TOKEN_PATH} ${LOCAL_TOKEN_PATH} -y -p vagrant
do
    echo "Trying again..."
    sleep 1
done

echo "Token fetched."

cat ${LOCAL_TOKEN_PATH}

EXPORT ACCESS_TOKEN=$(cat ${LOCAL_TOKEN_PATH})

# Install K3S
curl -sfL https://get.k3s.io | K3S_URL=https://192.168.56.110:6443 K3S_TOKEN=${ACCESS_TOKEN} INSTALL_K3S_EXEC='--flannel-iface=eth1' sh -
