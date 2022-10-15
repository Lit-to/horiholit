#> holit:start/modecheck

execute as @a[gamemode=!creative] run tag @s add adv
execute as @a[gamemode=creative,tag=adv] run function holit:start/tell

