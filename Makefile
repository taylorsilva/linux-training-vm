.PHONY: vm

vm:
	vagrant destroy -f && vagrant up

ssh:
	vagrant ssh -tc 'tmux attach -t BOX || tmux new -s BOX'

