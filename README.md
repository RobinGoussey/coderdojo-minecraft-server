# Coderdojo_minecraft_server
A repository for all config and explenation of how to set up a server. This will be explained for new or experienced coaches.

## Installing the server.
Install the latest buildtools from SpigotMC and run:
```
java -jar BuildTools.jar
```
This will generate a directory structure. You should see directories like world, plugins, and a jar file SpigotMC-X.X.X.jar. To run the server you can use the command:
```
java -jar spigot-1.14.4.jar
```
--------------------------------------
## Running the server.
### Running from a script
#### Windows
In windows you can make a run.bat file, with the line below:
```
java -Xms1024M -Xmx4096M -jar spigot-1.14.4.jar nogui
```
This tells java to run the spigot server, with a minimum of 1 GB RAM, and a max of 4 GB RAM. To start the server you can just execute the run.bat.
#### Linux
In linux, you can make a .sh file, with the same contents:
```
java -Xms1024M -Xmx4096M -jar spigot-1.14.4.jar nogui
```
###### Linux create as a service 

