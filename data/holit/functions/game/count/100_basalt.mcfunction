#> holit:game/count/100_basalt
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[22]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:basalt"}} run item modify entity @s enderchest.22 holit:count
item modify entity @s enderchest.22 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.22 loot holit:ender/basalt
scoreboard players reset @s stats
