#> holit:game/count/23_netherite
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[23]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:ancient_debris"}} run item modify entity @s enderchest.23 holit:count
item modify entity @s enderchest.23 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.23 loot holit:ender/netherite
scoreboard players reset @s stats
