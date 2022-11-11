#> holit:game/level/tell/loop
tellraw @a[team=sp] [{"text": "|"},{"nbt":"result.inv[0].tag.display.Name","storage":"holit:","interpret": true},{"text": "＊"},{"nbt":"result.inv[0].tag.Count","storage":"holit:"}]
data modify storage holit: result.id set from storage holit: result.inv[0].id
execute if data storage holit: {result:{id:"minecraft:granite"}} run function holit:game/level/tell/stones
execute if data storage holit: {result:{id:"minecraft:oak_log"}} run function holit:game/level/tell/logs
data remove storage holit: result.inv[0]
data remove storage holit: result.id
execute unless data storage holit: {result:{inv:[]}} run function holit:game/level/tell/loop

