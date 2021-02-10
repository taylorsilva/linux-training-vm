# Linux Training VM

This project helps to create Linux VM for [System Programming for Linux Containers Training M7D-SPLC02](http://man7.org/training/sys_prog_lxcon/index.html) course

## Pre-requirements

- [macOS](https://en.wikipedia.org/wiki/MacOS) 10.12 Sierra or higher
- [Homebrew](https://brew.sh/)

## Installation

- Checkout repo on your local machine
- Install [VirtualBox](https://www.virtualbox.org/)
  NOTE: This setup works with virtual box 6.0.14
  `brew install --cask virtualbox`
- Install [Vagrant](https://www.vagrantup.com/intro/index.html)
  `brew install --cask vagrant`
  `vagrant plugin install vagrant-disksize`
- Run
  `make vm`
- SSH onto machine
  `make ssh`
- Reload VM with VirtualBox gui to get GRUB.
  `make get-grub`
  Note: Once "VirtualBox" logo appears, click the gui and hold shift
  to get GRUB (VM capturing must be enabled).
- You may want to change your shell to zsh `chsh -s /usr/bin/zsh`. Default password is `vagrant`

### Shared Folders

If shared folders are not mounting try this:

```
vagrant plugin install vagrant-vbguest
vagrant vbguest
vagrant reload
```
