.PHONY: vm

vm:
	vagrant destroy -f && vagrant up

ssh:
	vagrant ssh -tc 'tmux attach -t BOX || tmux new -s BOX'

get-grub:
	# Once the Virtual box VM gui comes up,
	# click into the gui (requires capturing keyboard input),
	# and hold `SHIFT` on your keyboard
	GET_GRUB=true vagrant reload
