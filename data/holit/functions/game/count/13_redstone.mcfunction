#> holit:game/count/13_redstone
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[13]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:redstone_ore"}} run item modify entity @s enderchest.13 holit:count
item modify entity @s enderchest.13 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.13 loot holit:ender/redstone
scoreboard players reset @s stats
