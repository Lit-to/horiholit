#> holit:start/tell

tag @s remove adv
tellraw @s [{"text": "============="}]
tellraw @s [{"text": "ルールを表示する","bold": true,"underlined": true}]
tellraw @s [{"text": "スタート！","bold": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/function holit:start/main"}},{"text": "","bold": false,"underlined": false}]
tellraw @s [{"text": "強制終了","bold": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/function holit:fin"}},{"text": "","bold": false,"underlined": false}]
tellraw @s [{"text": "============="}]

function #minecraft:load
