#> holit:game/count/_calc

scoreboard players set @s stats 1
#execute store result storage holit: stats int 1 run scoreboard players get count stats
scoreboard players operation count stats += @s stats
execute store result storage holit: stats.tag.Count int 1 run scoreboard players get count stats

