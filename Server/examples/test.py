#! /usr/bin/python3

import mcpi.minecraft as minecraft

# Add address of server, now localhost, and the port, default 4711
mc = minecraft.Minecraft.create("localhost", 4711)

# should post to chat
mc.postToChat("Test raspberry")
# Should change block on coordinate x 40, y 5, z 0
mc.setBlock(40, 5, 0, 60)
