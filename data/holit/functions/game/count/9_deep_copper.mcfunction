#> holit:game/count/9_deep_copper
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[9]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:deepslate_copper_ore"}} run item modify entity @s enderchest.9 holit:count
item modify entity @s enderchest.9 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.9 loot holit:ender/deep_copper
scoreboard players reset @s stats

