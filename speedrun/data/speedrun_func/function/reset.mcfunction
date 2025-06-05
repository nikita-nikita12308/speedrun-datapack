# Complete timer reset for debugging
scoreboard objectives remove speedrun_time
scoreboard objectives remove speedrun_ticks
scoreboard objectives remove speedrun_seconds
scoreboard objectives remove speedrun_minutes
scoreboard objectives setdisplay sidebar
tellraw @a {"text":"Speedrun timer cleared!","color":"red"}

# Reset dimension objectives for debugging
# Remove boss bars
bossbar remove speedrun:nether_progress
bossbar remove speedrun:overworld_progress

# Clear scoreboard objectives
scoreboard objectives remove blaze_rods
scoreboard objectives remove ender_pearls
scoreboard objectives remove overworld_items

scoreboard objectives remove timerLocation
scoreboard objectives remove timerLocation_click

tellraw @a {"text":"Dimension objectives cleared!","color":"red"}