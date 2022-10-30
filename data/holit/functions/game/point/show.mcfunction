#> holit:game/point/show
#
execute store result score temp calc run data get storage holit: frequency[-2] 1
#
execute if score temp calc < @s point run bossbar set holit: color red
execute if score temp calc < @s point run bossbar set holit: name [{"text": "現在1位:"},{"text":"?????"},{"text": "/レベル:"},{"score":{"objective": "level","name": "@s"}},{"text": "|"},{"score":{"objective": "time","name": "hour"}},{"text": "時間"},{"score":{"objective": "time","name": "minute"}},{"text": "分"},{"score":{"objective": "time","name": "second"}},{"text": "秒"}]
execute if score temp calc < @s point store result bossbar holit: value run data get storage holit: frequency[-1] 1 
#

execute if score @s point < temp calc run bossbar set holit: color green 
execute if score @s point < temp calc store result bossbar holit: value run scoreboard players get @s point 
execute if score @s point < temp calc run bossbar set holit: name [{"text": "現在1位:"},{"selector":"@s"},{"text": "/レベル:"},{"score":{"objective": "level","name": "@s"}},{"text": "|"},{"score":{"objective": "time","name": "hour"}},{"text": "時間"},{"score":{"objective": "time","name": "minute"}},{"text": "分"},{"score":{"objective": "time","name": "second"}},{"text": "秒"}]





