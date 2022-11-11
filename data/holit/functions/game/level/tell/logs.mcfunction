#> holit:game/level/tell/logs
#木
execute if score @s stats_oak matches 1.. run tellraw @a[team=sp] [{"text": " Lオークの原木"},{"score": {"objective": "stats_oak","name": "@s"}}]
execute if score @s stats_spruce matches 1.. run tellraw @a[team=sp] [{"text": " Lマツの原木"},{"score": {"objective": "stats_spruce","name": "@s"}}]
execute if score @s stats_birch matches 1.. run tellraw @a[team=sp] [{"text": " L白樺の原木"},{"score": {"objective": "stats_birch","name": "@s"}}]
execute if score @s stats_jungle matches 1.. run tellraw @a[team=sp] [{"text": " Lジャングルの原木"},{"score": {"objective": "stats_jungle","name": "@s"}}]
execute if score @s stats_acacia matches 1.. run tellraw @a[team=sp] [{"text": " Lアカシアの原木"},{"score": {"objective": "stats_acacia","name": "@s"}}]
execute if score @s stats_dark_oak matches 1.. run tellraw @a[team=sp] [{"text": " Lダークオークの原木"},{"score": {"objective": "stats_dark_oak","name": "@s"}}]
execute if score @s stats_crimson matches 1.. run tellraw @a[team=sp] [{"text": " L真紅の幹"},{"score": {"objective": "stats_crimson","name": "@s"}}]
execute if score @s stats_warped matches 1.. run tellraw @a[team=sp] [{"text": " L歪んだ幹"},{"score": {"objective": "stats_warped","name": "@s"}}]

