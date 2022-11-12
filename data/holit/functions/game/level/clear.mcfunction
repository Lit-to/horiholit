#> holit:game/level/clear
tellraw @a [{"selector":"@s","color": "gold"},{"text": "がクリアした！","color": "gold"}]
gamemode spectator @s 
team join sp @s
summon firework_rocket
loot replace entity @s weapon.mainhand loot holit:head
data modify storage holit: result.temp set from entity @s SelectedItem.tag.SkullOwner.Name



#data modify storage holit: result[-1] set value []
#data modify storage holit: result[-1] append value "{\"text\":\"第\"},{\"score\":{\"name\":\"rank\",\"objective\":\"point\"}},{\"text\":\"位\"},{\"text\":\":\"}"
#data modify storage holit: result[-1] append from storage holit: result.temp
#execute store result storage holit: result[-1]  0.05 run scoreboard players get time point 

item replace entity @s weapon.mainhand with air
function holit:game/level/enderchest
function holit:game/level/tell

