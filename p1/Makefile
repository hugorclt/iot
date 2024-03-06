all:
	vagrant up --provider virtualbox

destroy:
	vagrant destroy hrecoletS hrecoletSW -f

# A tester
stop:
	vagrant halt hrecoletS hrecoletSW

# A tester
restart:
	vagrant reload hrecoletS hrecoletSW

make re:
	make destroy
	make all
