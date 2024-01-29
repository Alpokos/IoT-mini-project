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

## 2. Components
For this project we created temperature and pressure monitoring app run on RIOT and ran on M3 board.

### C Application and its function on IoT device
The application is a simple while loop that reads temperature and pressure data using the lps modules introduced in the makefile. After they are read from the sensor, the application prints out the current values and sleeps for a while. 

![image](https://github.com/Alpokos/IoT-mini-project/assets/144924470/e256ffaa-f12f-40e3-b515-fd753caddcef)


### Makefile and configuration
The makefile consists of rows that specify the appplication name, Board used, RIOT install folder and the different modules that are needed in this app.

![image](https://github.com/Alpokos/IoT-mini-project/assets/144924470/f052b62b-6592-4472-b971-41ba2cba870d)


## 3. Networking and data transfer to CSC cloud

### Flask
blablabla blablablablablab

## 4. Cloud infrastructure

### Docker
blablabla blablablablablab


## 5. Conclusion
asdblablabla blablablablablab
