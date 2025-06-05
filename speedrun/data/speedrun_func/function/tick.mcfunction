# Speedrun timer tick function (runs every tick)
# Increment tick counter for all players
# Only increment ticks if timer is running (timerState = 0)
execute as @a if score @s timerState matches 0 run scoreboard players add @s speedrun_ticks 1

# Convert ticks to seconds (only if running)
execute as @a if score @s timerState matches 0 if score @s speedrun_ticks matches 20.. run scoreboard players add @s speedrun_seconds 1
execute as @a if score @s timerState matches 0 if score @s speedrun_ticks matches 20.. run scoreboard players set @s speedrun_ticks 0

# Convert seconds to minutes (only if running)
execute as @a if score @s timerState matches 0 if score @s speedrun_seconds matches 60.. run scoreboard players add @s speedrun_minutes 1
execute as @a if score @s timerState matches 0 if score @s speedrun_seconds matches 60.. run scoreboard players set @s speedrun_seconds 0

# Update sidebar display with current time (this can run regardless of pause)
execute as @a run scoreboard players operation Хвилини: speedrun_time = @s speedrun_minutes
execute as @a run scoreboard players operation Секунди: speedrun_time = @s speedrun_seconds

execute as @a if score @s timerState matches 1 run title @s actionbar {"text":"Timer is paused","color":"yellow"}


