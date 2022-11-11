#> holit:game/count/100_mossy
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[3]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:mossy_cobblestone"}} run item modify entity @s enderchest.3 holit:count
item modify entity @s enderchest.3 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.3 loot holit:ender/mossy
scoreboard players reset @s stats

