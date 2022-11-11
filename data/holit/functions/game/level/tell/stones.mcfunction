#> holit:game/level/tell/stones
#木
execute if score @s stats_granite matches 1.. run tellraw @a[team=sp] [{"text": " L花崗岩"},{"score": {"objective": "stats_granite","name": "@s"}}]
execute if score @s stats_andesite matches 1.. run tellraw @a[team=sp] [{"text": " L安山岩"},{"score": {"objective": "stats_andesite","name": "@s"}}]
execute if score @s stats_diorite matches 1.. run tellraw @a[team=sp] [{"text": " L閃緑岩"},{"score": {"objective": "stats_diorite","name": "@s"}}]
execute if score @s stats_tuff matches 1.. run tellraw @a[team=sp] [{"text": " L凝灰岩"},{"score": {"objective": "stats_tuff","name": "@s"}}]
execute if score @s stats_basalt matches 1.. run tellraw @a[team=sp] [{"text": " L玄武岩"},{"score": {"objective": "stats_basalt","name": "@s"}}]


