# IoT-mini-project 
### Group 33 - Muhammad Ahmad, Syed Ali, Alpo Kosunen

## 1. Setting up the environment

After receiving the credentials for the FIT IoT-Lab we were able to create SSH keys and connect to it. I created a project folder to where I would later create the main.c file containing the application code and the Makefile needed for RIOT OS compiling. Because of this subject is not very familiar to us we selected the project to be about a simple IoT device that reads temperature and ambient pressure from its surroundings and then transmitss it to the cloud where the data would be formed to a graph. 

### FIT IoT lab

The work start with cloning RIOT git to our instance

```
git clone https://github.com/RIOT-OS/RIOT
```

After this we needed to rollback RIOT branch to be compatible with our desired board. In /RIOT path:
```
git checkout 2022.01
```
After this we need to set RIOT environmental variables correctly using
```
source /opt/riot.source
```
After this we are all done to begin the testing and developing with our own application.

### CSC Cloud instances

For the data transfer to clound we created one instance in CSC Cloud. The instance is running Ubuntu 22.04 Server and hosts Docker where the webserver used for fetching data from the IoT device is done. The Ubuntu instance allocates one public IP used in the transfer and then it gets networked through internal link to Docker container.

## 2. RIOT OS ran in Iot device
blablabla blablablablablab
### C Application and its function on IoT device
blablabla blablablablablab
### Makefile and configuration
blablabla blablablablablab

## 3. Networking and data transfer to CSC cloud

### Flask
blablabla blablablablablab

## 4. Cloud infrastructure

### Docker
blablabla blablablablablab


## 5. Conclusion
asdblablabla blablablablablab
