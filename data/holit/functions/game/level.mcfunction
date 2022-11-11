#> holit:game/level
execute unless score @s level matches -2147483648..2147483647 run scoreboard players set @s level 0
execute if score @s level matches 0 run loot replace entity @s weapon.mainhand loot holit:axe
execute if score @s level matches 0 run scoreboard players set @s level 1
#レベル特定
execute if score @s point matches ..0 run scoreboard players set @s point 0

scoreboard players operation pre level = @s level
execute if score @s point <= 1 calc run loot replace entity @s weapon.mainhand loot holit:axe
execute if score @s point <= 1 calc run scoreboard players set @s level 1
execute if score 1 calc <= @s point if score @s point < 2 calc run loot replace entity @s weapon.mainhand loot holit:wood
execute if score 1 calc <= @s point if score @s point < 2 calc run scoreboard players set @s level 2
execute if score 2 calc <= @s point if score @s point < 3 calc run loot replace entity @s weapon.mainhand loot holit:stone
execute if score 2 calc <= @s point if score @s point < 3 calc run scoreboard players set @s level 3
execute if score 3 calc <= @s point if score @s point < 4 calc run loot replace entity @s weapon.mainhand loot holit:iron
execute if score 3 calc <= @s point if score @s point < 4 calc run scoreboard players set @s level 4
execute if score 4 calc <= @s point if score @s point < 5 calc run loot replace entity @s weapon.mainhand loot holit:gold
execute if score 4 calc <= @s point if score @s point < 5 calc run scoreboard players set @s level 5
execute if score @s point < 5 calc at @s if entity @e[type=armor_stand,distance=..3,tag=end] run tp @s ~ ~-10 ~
execute if score @s point < 5 calc at @s if entity @e[type=armor_stand,distance=..3,tag=nether] run tp @s ~ ~-10 ~


#ネザーに移動
execute if score 5 calc <= @s point if score @s point < 7 calc if entity @s[predicate=holit:overworld] in overworld run tp @s @e[type=armor_stand,tag=nether,sort=nearest,limit=1]
execute if score 5 calc <= @s point if score @s point < 7 calc if entity @s[predicate=holit:overworld] in overworld at @e[type=armor_stand,tag=nether,sort=nearest,limit=1] run spawnpoint @s ~ ~ ~
execute if score 5 calc <= @s point if score @s point < 6 calc run loot replace entity @s weapon.mainhand loot holit:diamond
execute if score 5 calc <= @s point if score @s point < 6 calc run scoreboard players set @s level 6
execute if score 5 calc <= @s point if score @s point < 6 calc in overworld at @e[type=armor_stand,tag=nether,sort=nearest,limit=1] run spawnpoint @s ~ ~ ~

execute if score 6 calc <= @s point if score @s point < 7 calc run loot replace entity @s weapon.mainhand loot holit:gold
execute if score 6 calc <= @s point if score @s point < 7 calc in overworld at @e[type=armor_stand,tag=nether,sort=nearest,limit=1] run spawnpoint @s ~ ~ ~
execute if score 6 calc <= @s point if score @s point < 7 calc run scoreboard players set @s level 7
#エンドに移動
execute if score 7 calc <= @s point if score @s point < 8 calc if entity @s[predicate=holit:nether] run loot give @s loot holit:move/_first
execute if score 7 calc <= @s point if score @s point < 8 calc if entity @s[predicate=holit:nether] in overworld at @e[type=armor_stand,tag=end,sort=nearest,limit=1] run spawnpoint @s ~ ~ ~
execute if score 7 calc <= @s point if score @s point < 8 calc if entity @s[predicate=holit:nether] in overworld run tp @s @e[type=armor_stand,tag=end,sort=nearest,limit=1]
execute if score 7 calc <= @s point if score @s point < 8 calc run loot replace entity @s weapon.mainhand loot holit:netherite
execute if score 7 calc <= @s point if score @s point < 8 calc run scoreboard players set @s level 8
execute if score 8 calc <= @s point if score @s point < 9 calc run loot replace entity @s weapon.mainhand loot holit:neo_netherite
execute if score 8 calc <= @s point if score @s point < 9 calc if data storage holit: {gate:0b} run function holit:game/gate
execute if score 8 calc <= @s point if score @s point < 9 calc run scoreboard players set @s level 9
execute if score 9 calc <= @s point run function holit:game/level/clear


execute if score @s level matches ..9 if score pre level < @s level run function holit:game/xp/level
execute if score @s level matches ..9 if score pre level < @s level run tellraw @a [{"selector":"@s"},{"text": "が"},{"score":{"name": "@s","objective": "level"}},{"text": "レベルに到達した。"}]
execute if score @s level matches ..9 if score pre level < @s level at @s run playsound entity.player.levelup master @s ~ ~ ~
execute if score @s level matches ..9 if score @s level < pre level run function holit:game/xp/level
execute if score @s level matches ..9 if score @s level < pre level run tellraw @a [{"selector":"@s"},{"text": "が"},{"score":{"name": "@s","objective": "level"}},{"text": "レベルにダウンした。"}]
scoreboard players reset max level 
scoreboard players reset pre level
scoreboard players set amount point 0
scoreboard players reset amount point 
