#> holit:game/count/25_chorus_plant
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[25]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:chorus_plant"}} run item modify entity @s enderchest.25 holit:count
item modify entity @s enderchest.25 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.25 loot holit:ender/chorus_plant
#execute if score count stats matches 65.. run function holit:game/count/27_obsidian
scoreboard players reset @s stats


