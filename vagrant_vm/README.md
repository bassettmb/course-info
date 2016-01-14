CS3281 Development Environment
==============================

For this course, we will be using Ubuntu 14.04.3 LTS (Trusty Tahr).
Our primary compiler will be the Ubuntu-provided gcc c++ compiler (g++ 4.8.4
as of the time of writing). All program submissions will be graded as if
they were built and run on the course virtual machine.

Note that this class will require use of a posix-style terminal. For
basic information on how to use the Ubuntu terminal and shell, see the
following pages from the Ubuntu wiki:
  + [https://help.ubuntu.com/community/CommandlineHowto](https://help.ubuntu.com/community/CommandlineHowto)
  + [https://help.ubuntu.com/community/UsingTheTerminal](https://help.ubuntu.com/community/UsingTheTerminal)

Instructions
------------
1. Install vagrant from the vagrant website.

    [https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html)

2. Install Virtualbox.

    [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

3. Clone the course-info git repo.

        git clone --recursive git@github.com:cs3281-2016/course-info.git

4. Start vagrant from the vagrant-vm directory of the course-info repository.

        cd course-info/vagrant-vm
        vagrant up

Notes and Optional Extras
-------------------------
+ The vm may also be accessed via ssh from a terminal by running `vagrant
  ssh` from the `course-info/vagrant-vm` directory.
+ Headless mode (running without the gui) can be enabled by setting
  `vb.gui` to `false` in the provided Vagrantfile
+ Additional software (Eclipse, Code::Blocks, etc.) may be installed
  by using apt
  + Examples:

            sudo apt-get install codeblocks

            sudo apt-get install eclipse

  + Documentation:
    + [https://help.ubuntu.com/lts/serverguide/apt-get.html](https://help.ubuntu.com/lts/serverguide/apt-get.html)
    + [https://help.ubuntu.com/community/AptGet/Howto](https://help.ubuntu.com/community/AptGet/Howto)

Software Packages
-----------------

+ Ubuntu 14.04 LTS
+ ssh
+ bash
+ gcc
+ g++
+ gdb
+ valgrind
+ make
+ autotools
+ cmake
+ git
+ vim
+ emacs
+ libboost
