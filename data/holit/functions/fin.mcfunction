#> holit:fin

execute unless data storage holit: {status:1b} run tellraw @s [{"text":"まだゲームが起動していません。"}]
execute unless data storage holit: {status:1b} run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 10 0.1
execute if data storage holit: {status:1b} run function holit:fin/_main