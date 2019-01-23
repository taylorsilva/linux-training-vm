.PHONY: vm

vm:
	vagrant destroy -f && vagrant up
