#> holit:game/level
execute unless score @s level matches -2147483648..2147483647 run scoreboard players set @s level 0
execute if score @s level matches 0 run loot replace entity @s weapon.mainhand loot holit:axe
execute if score @s level matches 0 run scoreboard players set @s level 1
#レベル特定
    execute store result score 0 point run data get storage holit: frequency[0]
    execute store result score 1 point run data get storage holit: frequency[1]
    execute store result score 2 point run data get storage holit: frequency[2]
    execute store result score 3 point run data get storage holit: frequency[3]
    execute store result score 4 point run data get storage holit: frequency[4]
    execute store result score 5 point run data get storage holit: frequency[5]
    execute store result score 6 point run data get storage holit: frequency[6]
    execute store result score 7 point run data get storage holit: frequency[7]
    execute store result score 8 point run data get storage holit: frequency[8]
    execute store result score 9 point run data get storage holit: frequency[9]
execute if score @s point matches ..0 run scoreboard players set @s point 0

scoreboard players operation pre level = @s level
execute if score @s point <= 1 point run loot replace entity @s weapon.mainhand loot holit:axe
execute if score @s point <= 1 point run scoreboard players set @s level 1
execute if score 1 point <= @s point if score @s point < 2 point run loot replace entity @s weapon.mainhand loot holit:wood
execute if score 1 point <= @s point if score @s point < 2 point run scoreboard players set @s level 2
execute if score 2 point <= @s point if score @s point < 3 point run loot replace entity @s weapon.mainhand loot holit:stone
execute if score 2 point <= @s point if score @s point < 3 point run scoreboard players set @s level 3
execute if score 3 point <= @s point if score @s point < 4 point run loot replace entity @s weapon.mainhand loot holit:iron
execute if score 3 point <= @s point if score @s point < 4 point run scoreboard players set @s level 4
execute if score 4 point <= @s point if score @s point < 5 point run loot replace entity @s weapon.mainhand loot holit:gold
execute if score 4 point <= @s point if score @s point < 5 point run scoreboard players set @s level 5
execute if score @s point < 5 point at @s if entity @e[type=armor_stand,distance=..3,tag=end] run tp @s ~ ~-10 ~
execute if score @s point < 5 point at @s if entity @e[type=armor_stand,distance=..3,tag=nether] run tp @s ~ ~-10 ~


#ネザーに移動
execute if score 5 point <= @s point if score @s point < 6 point if entity @s[predicate=holit:overworld] in overworld run tp @s @e[type=armor_stand,tag=nether,sort=nearest,limit=1]
execute if score 5 point <= @s point if score @s point < 6 point if entity @s[predicate=holit:overworld] in overworld at @e[type=armor_stand,tag=nether,sort=nearest,limit=1] run spawnpoint @s ~ ~ ~
execute if score 5 point <= @s point if score @s point < 6 point run loot replace entity @s weapon.mainhand loot holit:diamond
execute if score 5 point <= @s point if score @s point < 6 point run scoreboard players set @s level 6
execute if score 6 point <= @s point if score @s point < 7 point run loot replace entity @s weapon.mainhand loot holit:gold
execute if score 6 point <= @s point if score @s point < 7 point run scoreboard players set @s level 7
#エンドに移動
execute if score 7 point <= @s point if score @s point < 8 point if entity @s[predicate=holit:nether] run give @s purpur_block 128
execute if score 7 point <= @s point if score @s point < 8 point if entity @s[predicate=holit:nether] in overworld at @e[type=armor_stand,tag=end,sort=nearest,limit=1] run spawnpoint @s ~ ~ ~
execute if score 7 point <= @s point if score @s point < 8 point if entity @s[predicate=holit:nether] in overworld run tp @s @e[type=armor_stand,tag=end,sort=nearest,limit=1]
execute if score 7 point <= @s point if score @s point < 8 point run loot replace entity @s weapon.mainhand loot holit:netherite
execute if score 7 point <= @s point if score @s point < 8 point run scoreboard players set @s level 8
execute if score 8 point <= @s point if score @s point < 9 point run loot replace entity @s weapon.mainhand loot holit:neo_netherite
execute if score 8 point <= @s point if score @s point < 9 point run scoreboard players set @s level 9
execute if score 9 point <= @s point run function holit:game/level/clear


execute if score @s level matches ..9 if score pre level < @s level run tellraw @a [{"selector":"@s"},{"text": "が"},{"score":{"name": "@s","objective": "level"}},{"text": "レベルに到達した。"}]
execute if score @s level matches ..9 if score @s level < pre level run tellraw @a [{"selector":"@s"},{"text": "が"},{"score":{"name": "@s","objective": "level"}},{"text": "レベルにダウンした。"}]
scoreboard players reset max level 
scoreboard players reset pre level
scoreboard players set amount point 0
scoreboard players reset amount point 
execute at @s run playsound entity.player.levelup master @s ~ ~ ~
scoreboard players reset 0 point
scoreboard players reset 1 point
scoreboard players reset 2 point
scoreboard players reset 3 point
scoreboard players reset 4 point
scoreboard players reset 5 point
scoreboard players reset 6 point
scoreboard players reset 7 point
scoreboard players reset 8 point
scoreboard players reset 9 point
