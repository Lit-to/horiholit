#> holit:game/level/tell/loop
tellraw @a[team=sp] [{"text": "|"},{"nbt":"result.inv[0].tag.display.Name","storage":"holit:","interpret": true},{"text": "＊"},{"nbt":"result.inv[0].tag.Count","storage":"holit:"}]
data remove storage holit: result.inv[0]
execute unless data storage holit: {result:{inv:[]}} run function holit:game/level/tell/loop

