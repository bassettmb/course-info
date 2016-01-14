#!/usr/bin/env bash

hello_func() {
	echo "Hello World"
	sudo apt-get update
}

eclipse_func(){
    echo "Now Installing the eclipse"
    cd /home/vagrant/Downloads/
    #wget http://mirror.cc.vt.edu/pub/eclipse/technology/epp/downloads/release/luna/SR2/eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz
	wget http://www.gtlib.gatech.edu/pub/eclipse/technology/epp/downloads/release/mars/R/eclipse-cpp-mars-R-linux-gtk-x86_64.tar.gz
   
    tar -zxvf eclipse-cpp-mars-R-linux-gtk-x86_64.tar.gz
    mv eclipse/ ../

    sudo cp /vagrant/eclipse.desktop /usr/share/applications/ 
    sudo desktop-file-install /usr/share/applications/eclipse.desktop
    sudo cp /home/vagrant/eclipse/icon.xpm /usr/share/pixmaps/eclipse.xpm


}

#install openjdk7
openjdk7_func(){
 	sudo apt-get install openjdk-7-jdk -y

}



#Finally shutdown the system
shutdown_func(){
	echo "System Shutting Down"
	sudo shutdown now -h
}


git_func(){

sudo apt-get install git -y

}

cmake_func(){

	sudo apt-get install cmake -y
}

g++_func(){

	sudo apt-get install g++ -y

}
boost_func(){

	sudo apt-get install libboost-all-dev -y
}

#

hello_func
openjdk7_func
#eclipse_func XXX: broken url

g++_func
git_func
cmake_func
boost_func

