#> holit:game/count/21_netherrack
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[21]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:netherrack"}} run item modify entity @s enderchest.21 holit:count
item modify entity @s enderchest.21 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.21 loot holit:ender/netherrack
scoreboard players reset @s stats
