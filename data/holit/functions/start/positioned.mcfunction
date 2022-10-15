#> holit:start/positioned
execute as @e[tag=inst] at @s positioned ~ ~4 ~ run fill ~-13 ~5 ~-13 ~13 ~-5 ~13 air
kill @e[tag=inst]

place template holit:nether ~ ~ ~
place template holit:end ~ ~ ~ clockwise_90



summon armor_stand ~7 ~1 ~2 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["inst","nether"]}
summon armor_stand ~-7 ~1 ~2 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["inst","end"]}


