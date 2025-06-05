say Bastion advancement triggered!
title @a title {"text":"Бастіон знайдено!","color":"gold","bold":true}
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute as @p at @s store result score bastion_x coord_x run data get entity @s Pos[0] 1
execute as @p at @s store result score bastion_z coord_z run data get entity @s Pos[2] 1
tellraw @a [{"text":"📍 Bastion координати: ","color":"gold"},{"score":{"name":"bastion_x","objective":"coord_x"}},{"text":" / "},{"score":{"name":"bastion_z","objective":"coord_z"}},{"text":" [Show]","color":"yellow","clickEvent":{"action":"run_command","value":"/function speedrun_func:locations/show"}}]
