#> holit:game/level/tell
tellraw @a[team=sp] [{"text": "=======掘ったものリスト(インベントリ参照)======="}]
data modify storage holit: result.inv set from entity @s Inventory 
execute unless data storage holit: {result:{inv:[]}} run function holit:game/level/tell/loop
tellraw @a[team=sp] [{"text": "=======掘ったものリスト(インベントリ参照)======="}]
