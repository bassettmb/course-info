Steps to get the Development Environment up and running.

Software Packages:
==================
Ubuntu14_04
GIT
OPENJDK7
CMAKE
ECLIPSE
BOOST LIBRARIES
G++




Steps:
=================
1) install vagrant from the vagrant website:
https://www.vagrantup.com/downloads.html


2) Install Virtualbox
>IMPORTANT: For Mac Users: Due to test failures in the latest release of VirtualBox, Only use VirtualBox version 4.3.30 which can be downloaded from : https://www.virtualbox.org/wiki/Download_Old_Builds_4_3

3) create a vagrant project folder
eg: c:\dev\vagrant_proj
4) copy Vagrantfile, bootstrap.sh, eclipse.desktop files attached
along with this project to this folder.
5) in the mingw or cmd command prompt issue inside this folder
>> vagrant up

6) this will download the necessary vagrant box for the ubuntu64 bit machine and install the necessary dependency.

