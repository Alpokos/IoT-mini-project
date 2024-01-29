# IoT-mini-project 
### Group 33 - Muhammad Ahmad, Syed Ali, Alpo Kosunen

## NOTE: All work was performed by Alpo Kosunen alone. Please take that in to consideration when grading.

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


![image](https://github.com/Alpokos/IoT-mini-project/assets/144924470/4dc4a5cd-6d69-4463-ad0d-ded1bc61d231)


### Makefile and configuration
The makefile consists of rows that specify the appplication name, Board used, RIOT install folder and the different modules that are needed in this app.

![image](https://github.com/Alpokos/IoT-mini-project/assets/144924470/f052b62b-6592-4472-b971-41ba2cba870d)


## 3. Application used in FIT/IoT-LAB M3 board

### Compiling and running the application

We used this command to compile the program with makefile:

```
make all BOARD=iotlab-m3
```
![image](https://github.com/Alpokos/IoT-mini-project/assets/144924470/81ba094f-c35b-4dbf-9cac-412e42ccb391)

After this swe can start our experiment using 

```
iotlab-experiment submit -n "Pressure-temp-sens-app" -d 20 -l 1,archi=m3:at86rf231+site=grenoble
```

![image](https://github.com/Alpokos/IoT-mini-project/assets/144924470/fc412abc-58ee-44be-b027-21c0510f54f1)

Then we can flash our program to the board using 

```
make BOARD=iotlab-m3 IOTLAB_NODE=auto flash
```
![image](https://github.com/Alpokos/IoT-mini-project/assets/144924470/31ebec98-7d09-4dd4-9e24-eb9e4c0aa75d)

After this we can see the state from IOT testbed and open terminal where we can see the temperature and pressure data being updated every two seconds.

![image](https://github.com/Alpokos/IoT-mini-project/assets/144924470/fc82f63a-b2b8-42ce-972a-3b9474819f26)





## 5. Conclusion
As this project was kind of hard to implement because of my personal knowledge I could only do it partially. I still think that I learned a lot by doing it, having spent many hours banging my head against the wall. As said earlier this project is all my (Mr. Alpo Kosunen) work and my team members weren't able to contribute almost in any way.
