#> holit:start/modecheck

execute as @a[gamemode=!creative] run tag @s add adv
execute as @a[gamemode=creative,tag=adv] run function holit:start/tell

execute as @a[gamemode=spectator,team=!sp] run team join sp
execute as @a[gamemode=!spectator,team=sp] run team leave @s 

execute unless entity @a[predicate=holit:nether] unless entity @a[predicate=holit:overworld] unless score point min_obsidian matches 50 run scoreboard players set point min_obsidian 50

execute as @a[predicate=holit:spec/close] at @s run function holit:start/spec/you
execute as @a[predicate=holit:spec/open] run function holit:start/spec/me
recipe take @a *

