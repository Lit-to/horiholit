#> holit:game/count/15_lapis_lazuli
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[15]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:lapis_ore"}} run item modify entity @s enderchest.15 holit:count
item modify entity @s enderchest.15 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.15 loot holit:ender/lapis
scoreboard players reset @s stats
