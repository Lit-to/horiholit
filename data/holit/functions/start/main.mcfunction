#> holit:start/main
#範囲規定
gamemode survival @s
setworldspawn ~ ~ ~ 
worldborder center ~ ~ 
worldborder set 2000
execute unless entity @e[type=armor_stand,tag=inst] positioned ~ 300 ~ run function holit:start/positioned
#開始処理
data modify storage holit: status set value 1b
execute as @a at @s run spawnpoint @s ~ ~ ~ ~
bossbar remove holit:
bossbar add holit: {"text":""}
bossbar set holit: name [{"text": "現在1位:"},{"text":"?????"},{"text": "/レベル:"},{"score":{"objective": "level","name": "@s"}}]
bossbar set holit: color green 
bossbar set holit: style notched_20
execute store result bossbar holit: max run data get storage holit: frequency[-1] 1 

title @a title [{"text": "START"}]
execute as @a at @s run playsound entity.firework_rocket.launch master @s ~ ~ ~ 1 1 
#途中参加処理ファンクションを入れる
execute as @a at @s run function holit:game/join
bossbar set holit: players @a

