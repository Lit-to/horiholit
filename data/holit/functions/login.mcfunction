#> holit:login
tellraw @s [{"text": "既にゲームは開始しています。","color": "gray"}]
execute if data storage holit: {status:1b} run function holit:game/join

