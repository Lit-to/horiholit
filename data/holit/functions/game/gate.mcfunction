#> holit:game/gate
kill @e[type=ender_dragon]
tellraw @a [{"text": "エンドゲートウェイポータルが開いた","color": "aqua"}]
data modify storage holit: gate set value 1b
