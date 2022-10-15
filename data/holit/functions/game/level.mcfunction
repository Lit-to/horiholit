#> holit:game/level

execute unless score @s level matches -2147483648..2147483647 run loot replace entity @s weapon.mainhand loot holit:axe
execute if score @s level matches 1 run loot replace entity @s weapon.mainhand loot holit:wood
execute if score @s level matches 2 run loot replace entity @s weapon.mainhand loot holit:stone
execute if score @s level matches 3 run loot replace entity @s weapon.mainhand loot holit:iron
execute if score @s level matches 4 run loot replace entity @s weapon.mainhand loot holit:gold
#ネザーに移動
execute if score @s level matches 5 in overworld run tp @s @e[type=armor_stand,tag=nether,sort=nearest,limit=1]
execute if score @s level matches 5 in overworld at @e[type=armor_stand,tag=nether,sort=nearest,limit=1] run spawnpoint @s ~ ~ ~
execute if score @s level matches 5 run loot replace entity @s weapon.mainhand loot holit:diamond
execute if score @s level matches 6 run loot replace entity @s weapon.mainhand loot holit:gold
#エンドに移動
execute if score @s level matches 7 in overworld run tp @s @e[type=armor_stand,tag=end,sort=nearest,limit=1]
execute if score @s level matches 7 in overworld in overworld at @e[type=armor_stand,tag=end,sort=nearest,limit=1] run spawnpoint @s ~ ~ ~

execute if score @s level matches 7 run give @s purpur_block 128
execute if score @s level matches 7 run loot replace entity @s weapon.mainhand loot holit:neo_netherite
execute if score @s level matches 8 run loot replace entity @s weapon.mainhand loot holit:netherite
execute if score @s level matches 9 run function holit:game/level/clear
scoreboard players add @s level 1
execute if score @s level matches ..9 run tellraw @a [{"selector":"@s"},{"text": "が"},{"score":{"name": "@s","objective": "level"}},{"text": "レベルに到達した。"}]
scoreboard players reset max level 
scoreboard players set amount point 0
function holit:game/point

execute at @s run playsound entity.player.levelup master @s ~ ~ ~

