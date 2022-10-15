#> holit:fin

execute unless data storage holit: {status:1b} run tellraw @s [{"text":"まだゲームが起動していません。"}]
execute if data storage holit: {status:1b} run function holit:fin/_main

