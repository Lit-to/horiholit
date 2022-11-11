#> holit:game/count/20_netherrack
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[20]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:netherrack"}} run item modify entity @s enderchest.20 holit:count
item modify entity @s enderchest.20 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.20 loot holit:ender/netherrack
scoreboard players reset @s stats
