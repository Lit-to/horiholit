#> holit:game/count/2_deepslate
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[2]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc

execute if data storage holit: {stats:{id:"minecraft:deepslate"}} run item modify entity @s enderchest.2 holit:count
item modify entity @s enderchest.2 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.2 loot holit:ender/deepslate
scoreboard players reset @s stats

