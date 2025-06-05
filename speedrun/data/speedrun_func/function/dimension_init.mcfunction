# Initialize dimension objectives and boss bars
# Create scoreboard objectives for tracking items
scoreboard objectives add blaze_rods dummy
scoreboard objectives add ender_pearls dummy
scoreboard objectives add overworld_items dummy

# Create boss bars
bossbar add speedrun:nether_progress {"text":"Nether Progress","color":"red"}
bossbar add speedrun:overworld_progress {"text":"Overworld Progress","color":"green"}

# Set boss bar properties
bossbar set speedrun:nether_progress max 20
bossbar set speedrun:nether_progress value 0
bossbar set speedrun:nether_progress color red
bossbar set speedrun:nether_progress style progress

bossbar set speedrun:overworld_progress max 100
bossbar set speedrun:overworld_progress value 0
bossbar set speedrun:overworld_progress color green
bossbar set speedrun:overworld_progress style progress

# Initialize counters
scoreboard players set #total_blaze_rods blaze_rods 0
scoreboard players set #total_ender_pearls ender_pearls 0
scoreboard players set #total_overworld overworld_items 0

# Set target values
scoreboard players set #target_blaze_rods blaze_rods 7
scoreboard players set #target_ender_pearls ender_pearls 13
scoreboard players set #target_overworld overworld_items 100

# Show boss bars to all players
bossbar set speedrun:nether_progress players @a
bossbar set speedrun:overworld_progress players @a

tellraw @a {"text":"Dimension objectives initialized!","color":"gold"}