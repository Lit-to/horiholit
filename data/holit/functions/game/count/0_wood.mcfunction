#> holit:game/count/0_wood
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[0]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc

execute if data storage holit: {stats:{id:"minecraft:oak_log"}} run item modify entity @s enderchest.0 holit:count
item modify entity @s enderchest.0 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.0 loot holit:ender/wood

scoreboard players reset @s stats
scoreboard players reset count stats
