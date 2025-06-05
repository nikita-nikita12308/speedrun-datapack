# Initialize speedrun timer
# Create scoreboard objectives
scoreboard objectives add speedrun_time dummy "⏱ Час спідрану"
scoreboard objectives add speedrun_ticks dummy
scoreboard objectives add speedrun_seconds dummy
scoreboard objectives add speedrun_minutes dummy
scoreboard objectives add timerState dummy "Timer State"


scoreboard players set @a timerLocation 0
scoreboard players set @a timerState 0

scoreboard objectives setdisplay sidebar speedrun_time
scoreboard players set ────────── speedrun_time -1

# Initialize timer values
scoreboard players set @a speedrun_ticks 0
scoreboard players set @a speedrun_seconds 0
scoreboard players set @a speedrun_minutes 0


# Set constants for calculations
scoreboard players set #20 speedrun_ticks 20
scoreboard players set #60 speedrun_seconds 60

# Display initial time (00:00)
scoreboard players set Хвилини: speedrun_time 0
scoreboard players set Секунди: speedrun_time 0

tellraw @a {"text":"Speedrun timer initialized! Timer will start automatically.","color":"green"}
tellraw @a [{"text":"[Click here]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/function timer/location_menu"},"hoverEvent":{"action":"show_text","value":"Select your timer location"}},{"text":" to choose your location (Portal/Bastion/Fortress)","color":"white"}]
