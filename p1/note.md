## Links

https://k3s.io/
https://berviantoleo.medium.com/setup-kubernetes-development-environment-using-vagrant-and-k3s-9d3273589c44
https://askubuntu.com/questions/1173431/how-to-install-kvm-in-ubuntu-virtual-machine

## TODOS

- [x] Two machines with any operating system we want
- [x] Machine with 1cpu and 512MB of Ram
- [x] The first machine name should be [login_of_student] + S
- [x] The second machine name should be [login_of_student] + SW
- [x] The first machine IP should be 192.168.56.110
- [x] The second machine IP should be 192.168.56.111
- [] Have a dedicated IP on eth1 interface ?
- [] We should connect via ssh with no password (maybe vagrant ssh [machine_name] ?) 
- [] Install k3s on both machines 
- [] In the first one k3s should be in controller mode
- [] In the second one k3s should be in agent mode
- [] Use kubectl
