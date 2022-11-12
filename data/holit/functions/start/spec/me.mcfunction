#> holit:start/spec/me
tag @s add own
execute if entity @s[tag=!filled] run function holit:start/spec/me/copy
tag @a remove own
tag @s add filled
clear @s light_gray_stained_glass_pane
