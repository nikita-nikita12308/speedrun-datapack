# Set location
scoreboard players set @s timerLocation 2

# Visual feedback
tellraw @s [{"text":"[","color":"gray"},{"text":"✔","color":"dark_red"},{"text":"] Timer location set to: ","color":"gray"},{"text":"Bastion","color":"dark_red","bold":true}]

# Particles and sound
particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal @s
particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0.05 15 normal @s
playsound block.lava.pop master @s ~ ~ ~ 1 1.2