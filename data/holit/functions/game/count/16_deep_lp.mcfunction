#> holit:game/count/16_deep_lp
data modify storage holit: stats set value []
data modify storage holit: stats set from entity @s EnderItems[16]
execute store result score count stats run data get storage holit: stats.tag.Count 1
function holit:game/count/_calc
execute if data storage holit: {stats:{id:"minecraft:deepslate_lapis_ore"}} run item modify entity @s enderchest.16 holit:count
item modify entity @s enderchest.16 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.16 loot holit:ender/deep_lapis
scoreboard players reset @s stats

