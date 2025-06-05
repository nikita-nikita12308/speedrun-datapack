# Записати координати порталу
execute as @p at @s store result score portal_x coord_x run data get entity @s Pos[0] 1
execute as @p at @s store result score portal_z coord_z run data get entity @s Pos[2] 1

# Вивести в чат
tellraw @a [{"text":"[PORTAL] ","color":"aqua"},{"text":"Player ","color":"white"},{"selector":"@p"},{"text":" entered Nether at ","color":"white"},{"score":{"name":"portal_x","objective":"coord_x"},"color":"green"},{"text":" / ","color":"gray"},{"score":{"name":"portal_z","objective":"coord_z"},"color":"green"},{"text":" [Show]","color":"yellow","clickEvent":{"action":"run_command","value":"/function speedrun_func:locations/trigger_show"}}]

title @a actionbar {"text":"Portal location saved!", "color":"gold"}