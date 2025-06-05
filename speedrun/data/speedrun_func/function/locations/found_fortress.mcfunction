tellraw @a {"text":"DEBUG: Fortress function executed!","color":"red"}

# Store coordinates
execute as @p at @s store result score @s coord_x run data get entity @s Pos[0] 1
execute as @p at @s store result score @s coord_z run data get entity @s Pos[2] 1

# Copy to global fortress scores
scoreboard players operation global_fortress coord_x = @p coord_x
scoreboard players operation global_fortress coord_z = @p coord_z

# Display actionbar
title @a title {"text":"Фортецю знайдено!","color":"gold","bold":true}
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
tellraw @a [{"text":"📍 Fortress координати: ","color":"gold"},{"score":{"name":"global_fortress","objective":"coord_x"}},{"text":" / "},{"score":{"name":"global_fortress","objective":"coord_z"}},{"text":" [Show]","color":"yellow","clickEvent":{"action":"run_command","value":"function speedrun_func:locations/show"}}]
title @a actionbar [{"text":"📍 Fortress coords: ","color":"red"},{"score":{"name":"global_fortress","objective":"coord_x"}},{"text":" / "},{"score":{"name":"global_fortress","objective":"coord_z"}}]

