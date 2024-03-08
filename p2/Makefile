all:
	vagrant up --provider libvirt

destroy:
	vagrant destroy sleleuS -f
	rm -rfd .vagrant

re:
	make destroy
	make all

.PHONY: all destroy re
