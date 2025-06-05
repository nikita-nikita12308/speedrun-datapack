# Track dimension objectives every tick
# Count total items from all players
scoreboard players set #total_blaze_rods blaze_rods 0
scoreboard players set #total_ender_pearls ender_pearls 0

# Sum blaze rods from all players
execute as @a store result score @s blaze_rods run clear @s minecraft:blaze_rod 0
execute as @a run scoreboard players operation #total_blaze_rods blaze_rods += @s blaze_rods

# Sum ender pearls from all players
execute as @a store result score @s ender_pearls run clear @s minecraft:ender_pearl 0
execute as @a run scoreboard players operation #total_ender_pearls ender_pearls += @s ender_pearls

# Calculate nether progress (blaze rods + ender pearls out of 20 total)
scoreboard players operation #nether_progress blaze_rods = #total_blaze_rods blaze_rods
scoreboard players operation #nether_progress blaze_rods += #total_ender_pearls ender_pearls

# Update nether boss bar
execute store result bossbar speedrun:nether_progress value run scoreboard players get #nether_progress blaze_rods

# Update nether boss bar text with current progress
execute if score #total_blaze_rods blaze_rods matches ..6 if score #total_ender_pearls ender_pearls matches ..12 run bossbar set speedrun:nether_progress name [{"text":"Nether: ","color":"red"},{"score":{"name":"#total_blaze_rods","objective":"blaze_rods"},"color":"yellow"},{"text":"/7 Blaze Rods, ","color":"white"},{"score":{"name":"#total_ender_pearls","objective":"ender_pearls"},"color":"aqua"},{"text":"/13 Ender Pearls","color":"white"}]

# Complete nether objectives
execute if score #total_blaze_rods blaze_rods matches 7.. if score #total_ender_pearls ender_pearls matches 13.. run bossbar set speedrun:nether_progress name [{"text":"Nether: COMPLETE! ✓","color":"green"}]
execute if score #total_blaze_rods blaze_rods matches 7.. if score #total_ender_pearls ender_pearls matches 13.. run bossbar set speedrun:nether_progress color green

# Show nether boss bar only in nether
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run bossbar set speedrun:nether_progress players @s
execute as @a[nbt=!{Dimension:"minecraft:the_nether"}] run bossbar set speedrun:nether_progress players

# Example overworld tracking (customize as needed)
# Count specific overworld items - example with wood logs
scoreboard players set #total_overworld overworld_items 0
execute as @a store result score @s overworld_items run clear @s #minecraft:logs 0
execute as @a run scoreboard players operation #total_overworld overworld_items += @s overworld_items

# Update overworld boss bar
execute store result bossbar speedrun:overworld_progress value run scoreboard players get #total_overworld overworld_items
execute run bossbar set speedrun:overworld_progress name [{"text":"Overworld: ","color":"green"},{"score":{"name":"#total_overworld","objective":"overworld_items"},"color":"yellow"},{"text":"/100 Wood Logs","color":"white"}]

# Show overworld boss bar only in overworld
execute as @a[nbt={Dimension:"minecraft:overworld"}] run bossbar set speedrun:overworld_progress players @s
execute as @a[nbt=!{Dimension:"minecraft:overworld"}] run bossbar set speedrun:overworld_progress players