#> holit:start/spec/you
tag @s add own
execute as @a[distance=..5,gamemode=!spectator,sort=nearest,limit=1] run function holit:start/spec/you/copy
execute unless entity @a[distance=..5,gamemode=!spectator,sort=nearest,limit=1] run function holit:start/spec/you/no
tag @a remove own
tag @s remove filled
clear @s light_gray_stained_glass_pane

