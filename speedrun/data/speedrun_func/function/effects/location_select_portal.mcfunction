# Set location data
scoreboard players set @s timerLocation 1

# Update display
function timer/update_location_display

# Visual feedback
tellraw @s ["",{"text":"[","color":"gray"},{"text":"✔","color":"green"},{"text":"] ","color":"gray"},{"text":"Локація встановлена: Портал","color":"green"}]
particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20
playsound block.portal.travel master @s ~ ~ ~ 1 1.5