#> holit:game/count/1_stone
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[1]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc

execute if data storage holit: {stats:{id:"minecraft:stone"}} run item modify entity @s enderchest.1 holit:count
item modify entity @s enderchest.1 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.1 loot holit:ender/stone
scoreboard players reset @s stats

