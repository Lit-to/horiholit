#> holit:game/count/27_obsidian
data modify storage holit: stats set from entity @s EnderItems[26]
execute store result storage holit: stats.tag.Count int 1 run scoreboard players get count stats
scoreboard players set 64 stats 64
scoreboard players operation count stats -= 64 stats
execute if data storage holit: {stats:{id:"minecraft:obsidian"}} run item modify entity @s enderchest.26 holit:count
item modify entity @s enderchest.26 holit:input
execute if data storage holit: {stats:{id:"minecraft:light_gray_stained_glass_pane"}} run loot replace entity @s enderchest.26 loot holit:ender/obsidian
scoreboard players reset @s stats
