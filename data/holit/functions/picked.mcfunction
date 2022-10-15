#> holit:picked

execute if data storage holit: {status:1b} run scoreboard players set @s adv 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run loot replace entity @s weapon.mainhand loot holit:axe
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] run loot replace entity @s weapon.mainhand loot holit:wood
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] run loot replace entity @s weapon.mainhand loot holit:stone
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] run loot replace entity @s weapon.mainhand loot holit:iron
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] run loot replace entity @s weapon.mainhand loot holit:gold
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run loot replace entity @s weapon.mainhand loot holit:diamond
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run loot replace entity @s weapon.mainhand loot holit:netherite
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",tag:{neo:1b}}}] run loot replace entity @s weapon.mainhand loot holit:neo_netherite


advancement revoke @s only holit:pickaxe

