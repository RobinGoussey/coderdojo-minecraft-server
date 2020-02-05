# Coderdojo: Minecraft
A repository for all config and explenation of how to set up a server. This will be explained for new or experienced coaches. The use of minecraft can invigorate the youth a bit, since scratch might get a bit dull. There are 2 options, program in python, or build electronical components with redstone.

## Installing the server.
Install the latest buildtools from [SpigotMC](https://www.spigotmc.org/) and run:
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
When running a systemd linux file, you can use unit file, to make the server start and stop like a service. You can use the file below:
```
[Unit]
Description=Start minecraft server
#WorkingDirectory=/home/robin/Desktop/minecraft_server
After=network.target

[Service]
Type=simple
WorkingDirectory=/home/robin/Desktop/minecraft_server
ExecStart=/bin/bash /home/robin/Desktop/minecraft_server/run_detached.sh
ExecStop=/bin/bash /home/robin/Desktop/minecraft_server/stop_detached.sh
TimeoutStopSec=160
Restart=no
RemainAfterExit=true

[Install]
WantedBy=default.target
```
The scripts run_detached and stop_detached, can be found [here](Server/scripts). These scripts will detach the output of the server to a separate screen. This way you can later enter the screen and type commands if necessary. This requires GNU screen installed.

------------------------------------------------------------
## Programming in python with minecraft.
To program in python, you need a plugin, and the mcpi directory.
### [Raspberryjuice](https://github.com/zhuowei/RaspberryJuice)
This is the plugin you need to place into the generated plugins directory. Download the latest from [here](https://github.com/zhuowei/RaspberryJuice/tree/master/jars). And place it into the plugins directory. Afterwards, restart your server.
It only has a config file. Here you can change allowed hosts, and see what port you run on. 

### [MCPI](https://github.com/zhuowei/RaspberryJuice/tree/master/src/main/resources/mcpi/api/python/modded/mcpi)
To be able to connect to raspberryjuice, you need to place this directory near your python scripts. So download this and place it in the directory of the scripts.

## Usefull other plugins
### Multiverse core
This plugin makes it easy to have multiple worlds. Where you can then later set permissions on each world. (Through other plugin).
### [EssentialsX](https://www.spigotmc.org/resources/essentialsx.9089/)
EssentialsX has multiple parts, and can be used for chat, but more importantly setting warps. These warps can be used to warp between worlds. However, other plugins could help too.

