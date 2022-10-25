#> holit:game/percent/obsidian
summon armor_stand ~ ~ ~ {Marker:1b,Tags:["obs"],Invisible:1b,Invulnerable:1b}
loot replace entity @e[type=armor_stand,tag=obs,predicate=holit:sneak] weapon.mainhand loot holit:random70
loot replace entity @e[type=armor_stand,tag=obs,predicate=!holit:sneak] weapon.mainhand loot holit:random20
execute if entity @e[type=armor_stand,tag=obs,limit=1,nbt={ArmorItems:[{id:"minecraft:red_wool"}]}] run scoreboard players operation amount point += point min_obsidian
execute if entity @e[type=armor_stand,tag=obs,limit=1,nbt={ArmorItems:[{id:"minecraft:blue_wool"}]}] run scoreboard players reset @s min_obsidian


kill @e[type=armor_stand,tag=obs]

