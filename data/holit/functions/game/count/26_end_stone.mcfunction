#> holit:game/count/26_end_stone
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[26]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:end_stone"}} run item modify entity @s enderchest.26 holit:count
item modify entity @s enderchest.26 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.26 loot holit:ender/end_stone
#execute if score count stats matches 65.. run function holit:game/count/27_end_stone
scoreboard players reset @s stats
