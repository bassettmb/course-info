### CS3281 Development Environment

For this course, we will be using Ubuntu 14.04.3 LTS (Trusty Tahr).
Our primary compiler will be the Ubuntu-provided gcc c++ compiler (g++ 4.8.4
as of the time of writing). All program submissions will be graded as if
they were built and run on the course virtual machine.

Note that this class will require use of a posix-style terminal. For
basic information on how to use the Ubuntu terminal and shell, see the
following pages from the Ubuntu wiki:
  * [https://help.ubuntu.com/community/CommandlineHowto](https://help.ubuntu.com/community/CommandlineHowto)
  * [https://help.ubuntu.com/community/UsingTheTerminal](https://help.ubuntu.com/community/UsingTheTerminal)

Instructions
=================
1. install vagrant from the vagrant website
[https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html)

2. install Virtualbox
[https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

3. clone the course-info git repo
> git clone git@github.com:cs3281-2016/course-info.git

4. start vagrant from the course-info/vagrant-vm directory
> cd course-info/vagrant-vm
> vagrant up

* Notes (once your VM is up and running)
  * the vm can may be accessed via ssh from a terminal by running vagrant
    ssh from the `course-info/vagrant-vm` directory
  * headless mode (no gui) can be enabled by setting `vb.gui` to `false` in
    the provided Vagrantfile
  * Code::Blocks, Eclipse and more can be installed via apt
      > sudo apt-get install codeblocks
      > sudo apt-get install eclipse

Software Packages
==================

* Ubuntu 14.04 LTS
* ssh
* bash
* gcc
* g++
* gdb
* valgrind
* make
* autotools
* cmake
* git
* vim
* emacs
* libboost
