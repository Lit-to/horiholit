#> holit:game/count/19_emerald
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[19]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:emerald_ore"}} run item modify entity @s enderchest.19 holit:count
item modify entity @s enderchest.19 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.19 loot holit:ender/emerald
scoreboard players reset @s stats
