WeBWorK_Vagrant
===============

vagrant files for WeBWorK. 

These abbreviated
instructions work for unix and mac boxes. For Windows some modifications are required.

* First install VirtualBox and Vagrant
*  http://vagrantup.com for instructions

To set up with a prebuilt box:

```
git clone http://github.com/openwebwork/WeBWorK_Vagrant.git
cd WeBWorK_Vagrant
git checkout -b packaged origin/packaged
git clone http://github.com/openwebwork/webwork2.git
git clone http://github.com/openwebwork/pg.git
cd webwork2
vagrant up
```

* Depending on your download speed the git clone operations take about 3 minutes
* The vagrant up operation (including downloading the "box" which contains the cached image of the prebuilt virtual machine) and running the ww_install script takes about 3 minutes
* "the warning: unitialized value $browser ..." does not seem to affect anything. 
* When you are done you have a WeBWorK set up using ubuntu 12 operating system.

* To test the server type
* `http://localhost:8888/webwork2` into your browser
* To login to your virtual machine on the command line use
* `vagrant up`
* `cd /opt/webwork/`
* to get to the usual WeBWorK home directory.
* you can switch versions of webwork from here by typing

	cd webwork2
	git branch

and checkout the branches you wish to use. Remember to restart the server afterwards.
    



To set up a quick dev environment for WeBWorK:
This is similar but might take a little longer since all of the components are loaded into the operating system (the vagrant box is "provisioned") from a script instead of being cached in a prebuilt box. 

```
git clone https://github.com/openwebwork/WeBWorK_Vagrant.git
cd WeBWorK_Vagrant
git clone https://github.com/openwebwork/webwork2.git
git clone https://github.com/openwebwork/pg.git
cd webwork2
vagrant up
```
* To test the server type
* http://localhost:8888/webwork2 into your browser
* To login to your virtual machine on the command line use
* `vagrant up`
* `cd /opt/webwork/`
* to get to the usual WeBWorK home directory.


Information about installing vagrant can be found here: http://docs.vagrantup.com/v2/installation/index.html

Your webwork2 folder does have to be named webwork2.
