#> holit:game/join

tellraw @s [{"text": "ほりほりレースへようこそ!"}]
scoreboard players set @s point 0
function holit:game/level
effect give @s night_vision 100000 255 true
effect give @s water_breathing 1000000 255 true
attribute @s generic.max_health base set 2

function holit:game/ender
bossbar set holit: players @s


