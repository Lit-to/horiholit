#> holit:game/count/100_diorite
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[4]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:diorite"}} run item modify entity @s enderchest.4 holit:count
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.4 loot holit:ender/diorite
scoreboard players reset @s stats

