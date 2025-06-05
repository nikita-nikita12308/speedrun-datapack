# Set location
scoreboard players set @s timerLocation 3

# Visual feedback
tellraw @s [{"text":"[","color":"gray"},{"text":"✔","color":"red"},{"text":"] Timer location set to: ","color":"gray"},{"text":"Fortress","color":"red","bold":true}]

# Particles and sound
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal @s
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0.05 15 normal @s
playsound block.nether_bricks.break master @s ~ ~ ~ 1 1