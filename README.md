# Linux Training VM

This project helps to create Linux VM for [System Programming for Linux Containers Training M7D-SPLC02](http://man7.org/training/sys_prog_lxcon/index.html) course

## Pre-requirements

- [macOS](https://en.wikipedia.org/wiki/MacOS) 10.12 Sierra or higher
- [Homebrew](https://brew.sh/)

## Installation

- Checkout repo on your local machine
- Install [VirtualBox](https://www.virtualbox.org/)
  `brew cask install virtualbox`
- Install [Vagrant](https://www.vagrantup.com/intro/index.html)
  `brew cask install vagrant`
  `vagrant plugin install vagrant-disksize`
- Run
  `make vm`
- SSH onto machine
  `make ssh`
- Relaod VM with VirtualBox gui to get GRUB.
  Once "VirtualBox" logo appears, click the gui and hold shift (VM capturing must be enabled)
  `make get-grub`
