#> holit:load/point

# アイテムポイント設定、未記入の場合はデフォルトに設定されます。
# 木
scoreboard players set point min_oak 1
scoreboard players set point min_spruce 1
scoreboard players set point min_birch 1
scoreboard players set point min_jungle 1
scoreboard players set point min_acacia 1
scoreboard players set point min_dark_oak 1
scoreboard players set point min_crimson 1
scoreboard players set point min_warped 1
scoreboard players set point min_netherrack 1
# 石シリーズ
scoreboard players set point min_stone 2
scoreboard players set point min_deeps 3
scoreboard players set point min_andesite 2
scoreboard players set point min_diorite 2
scoreboard players set point min_granite 2
scoreboard players set point min_tuff 2
scoreboard players set point min_basalt 2
scoreboard players set point min_mossy 30
# 鉱石シリーズ
scoreboard players set point min_coal_ore 10
scoreboard players set point min_iron_ore 15
scoreboard players set point min_gold_ore 10
scoreboard players set point min_nether_gold_ore 12
scoreboard players set point min_copper_ore 10
scoreboard players set point min_rs_ore 20
scoreboard players set point min_lp_ore 20
scoreboard players set point min_emerald_ore 60
scoreboard players set point min_diamond_ore 100
#
scoreboard players set point min_deep_coal_ore 11
scoreboard players set point min_deep_iron_ore 16
scoreboard players set point min_deep_gold_ore 11
scoreboard players set point min_deep_rs_ore 21
scoreboard players set point min_deep_lp_ore 21
scoreboard players set point min_deep_emerald_ore 61
scoreboard players set point min_deep_diamond_ore 101
# ネザーそのほか
scoreboard players set point min_nether_quartz 80
scoreboard players set point min_ancient_debris 100
scoreboard players set point min_obsidian 10

#########################
#点数上から順にレベル
data modify storage holit: point set value []
data modify storage holit: point append value 5
data modify storage holit: point append value 100
data modify storage holit: point append value 300
data modify storage holit: point append value 800
data modify storage holit: point append value 1000
data modify storage holit: point append value 1000
data modify storage holit: point append value 795
data modify storage holit: point append value 1000
data modify storage holit: point append value 1000

