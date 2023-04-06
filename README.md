Hostsharing-Ansible-OpenOLAT
============================
This Ansible playbook will configure an OpenOLAT installation with Tomcat on a server from www.hostsharing.net.

To use these modules we have to create a file named ".hsadmin.properties" in the home directory of the package admins. In it we have to insert the packagename and password of the package admin. 

Example:

    xyz00@h99:~$ cat .hsadmin.properties 
    xyz00.passWord=insertpkgadminpasswordhere

This file should be protected, else it would be world readable:

    xyz00@h99:~$ chmod 600 .hsadmin.properties

As long as the hostsharing server on Debian 10 only provides Java 11 and Tomcat 10, a Java 17 and an Apache Tomcat 10.1 must be installed at the package admin for the current OpenOLAT version. The conf directory of the Tomcat and the files in it must be readable for the package group.

We clone this git-repo to our machine:

    $ git clone https://github.com/phormanns/Hostsharing-Ansible-OpenOLAT.git

Then we change the working directory:

    $ cd Hostsharing-Ansible-OpenOLAT

All needed parameters can be set in the inventory file now. Change xyz00 to the name of your package admin. Set the name of a domain, a new user and a password. We can edit the inventory file with:

    $ cp inventory-sample.yml inventory.yml
    $ vim inventory.yml
    
The option -i can be used to read this inventory file instead of the /etc/ansible/hosts file. We want to login with an SSH-Key. We run:

    $ ansible-playbook -i inventory.yml playbook-install.yml

Now we can reach our site via:

    https://lms.hs-example.de/

Login as administrator / openolat

--- Open Source Hosting ---
 https://www.hostsharing.net
