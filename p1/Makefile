all:
	vagrant up --provider libvirt

destroy:
	vagrant destroy hrecoletS hrecoletSW -f

stop:
	vagrant halt hrecoletS hrecoletSW

restart:
	vagrant reload hrecoletS hrecoletSW

make re:
	make destroy
	make all
