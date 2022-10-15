#> holit:fin/_main


data modify storage holit: status set value -1b
scoreboard players reset count time
effect clear @a night_vision
effect clear @a water_breathing
clear @a
attribute @s generic.max_health base set 20
title @a title [{"text": "FINISH"}]
execute as @a at @s run playsound entity.firework_rocket.launch master @s ~ ~ ~ 1 1 
advancement revoke @a only holit:login
bossbar remove holit:
scoreboard objectives modify point displayname {"text": "結果ポイント"}
execute store result score クリア者↑ point run data get storage holit: frequency[-1]
scoreboard objectives setdisplay sidebar point
gamemode spectator @a



