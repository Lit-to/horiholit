#> holit:start/tell

tag @s remove adv
tellraw @s [{"text": "============="}]
tellraw @s {"text":"ルールを告知する","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function holit:start/rule"}}
execute if data storage holit: {status:-1b} run tellraw @s [{"text": "スタート！","color": "dark_red","bold": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/function holit:start/main"}},{"text": "","bold": false,"underlined": false}]
execute if data storage holit: {status:-1b} run tellraw @s [{"text": "ゲームリセット","color": "blue","bold": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/function #minecraft:load"},"hoverEvent": {"action": "show_text","contents":{"text": "すべてのデータをリセットします。","color": "red"} }},{"text": "","bold": false,"underlined": false}]
tellraw @s [{"text": "強制終了","color": "gray","bold": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/function holit:fin"},"hoverEvent": {"action": "show_text","contents":{"text": "すべてのデータをリセットします。","color": "red"} }},{"text": "","bold": false,"underlined": false},{"text": "","bold": false,"underlined": false}]
tellraw @s [{"text": "============="}]

