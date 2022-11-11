#> holit:load/reset
execute if data storage holit: {status:0b} run function holit:fin


#declare storage holit:
#data modify storage holit: status set value 0b


# 掘ったことの検知作成、削除
# 削除
# 木
scoreboard objectives remove min_oak
scoreboard objectives remove min_spruce
scoreboard objectives remove min_birch
scoreboard objectives remove min_jungle
scoreboard objectives remove min_acacia
scoreboard objectives remove min_dark_oak
scoreboard objectives remove min_crimson
scoreboard objectives remove min_warped
# 石シリーズ
scoreboard objectives remove min_stone
scoreboard objectives remove min_andesite
scoreboard objectives remove min_diorite
scoreboard objectives remove min_granite
scoreboard objectives remove min_deeps
scoreboard objectives remove min_tuff
scoreboard objectives remove min_basalt
# 鉱石シリーズ
scoreboard objectives remove min_coal_ore
scoreboard objectives remove min_iron_ore
scoreboard objectives remove min_gold_ore
scoreboard objectives remove min_copper_ore
scoreboard objectives remove min_rs_ore
scoreboard objectives remove min_lp_ore
scoreboard objectives remove min_diamond_ore
scoreboard objectives remove min_emerald_ore
scoreboard objectives remove min_deep_coal_ore
scoreboard objectives remove min_deep_iron_ore
scoreboard objectives remove min_deep_gold_ore
scoreboard objectives remove min_nether_gold_ore 
scoreboard objectives remove min_deep_copper_ore
scoreboard objectives remove min_deep_rs_ore
scoreboard objectives remove min_deep_lp_ore
scoreboard objectives remove min_deep_diamond_ore
scoreboard objectives remove min_deep_emerald_ore
# ネザーそのほか
scoreboard objectives remove min_netherrack 
scoreboard objectives remove min_nether_quartz
scoreboard objectives remove min_ancient_debris
scoreboard objectives remove min_obsidian
scoreboard objectives remove min_chorus_plant 
scoreboard objectives remove min_chorus_flower
# 作成
# 木
scoreboard objectives add min_oak mined:oak_log
scoreboard objectives add min_spruce mined:spruce_log
scoreboard objectives add min_birch mined:birch_log
scoreboard objectives add min_jungle mined:jungle_log
scoreboard objectives add min_acacia mined:acacia_log
scoreboard objectives add min_dark_oak mined:dark_oak_log
scoreboard objectives add min_crimson mined:crimson_stem
scoreboard objectives add min_warped mined:warped_stem
# 石シリーズ
scoreboard objectives add min_stone mined:stone
scoreboard objectives add min_andesite mined:andesite
scoreboard objectives add min_diorite mined:diorite
scoreboard objectives add min_granite mined:granite
scoreboard objectives add min_tuff mined:tuff
scoreboard objectives add min_basalt mined:basalt
scoreboard objectives add min_deeps mined:deepslate

# 鉱石シリーズ
scoreboard objectives add min_coal_ore mined:coal_ore
scoreboard objectives add min_iron_ore mined:iron_ore
scoreboard objectives add min_gold_ore mined:gold_ore
scoreboard objectives add min_nether_gold_ore mined:nether_gold_ore
scoreboard objectives add min_copper_ore mined:copper_ore
scoreboard objectives add min_rs_ore mined:redstone_ore
scoreboard objectives add min_lp_ore mined:lapis_ore
scoreboard objectives add min_deep_coal_ore mined:deepslate_coal_ore
scoreboard objectives add min_deep_iron_ore mined:deepslate_iron_ore
scoreboard objectives add min_deep_gold_ore mined:deepslate_gold_ore
scoreboard objectives add min_deep_copper_ore mined:deepslate_copper_ore
scoreboard objectives add min_deep_rs_ore mined:deepslate_redstone_ore
scoreboard objectives add min_deep_lp_ore mined:deepslate_lapis_ore
# ネザーそのほか

scoreboard objectives add min_nether_quartz mined:nether_quartz_ore
scoreboard objectives add min_netherrack mined:netherrack
scoreboard objectives add min_diamond_ore mined:diamond_ore
scoreboard objectives add min_deep_diamond_ore mined:deepslate_diamond_ore
scoreboard objectives add min_ancient_debris mined:ancient_debris
scoreboard objectives add min_deep_emerald_ore mined:deepslate_emerald_ore
scoreboard objectives add min_emerald_ore mined:emerald_ore
scoreboard objectives add min_obsidian mined:obsidian
scoreboard objectives add min_chorus_plant mined:chorus_plant
scoreboard objectives add min_chorus_flower mined:chorus_flower

#エンドストーン
scoreboard objectives remove min_end_stone
scoreboard objectives add min_end_stone mined:end_stone

#統計用
function holit:load/stats

# ポイント管理 本当はstorageで管理すべきなんだろうけど、分かりやすさからスコアで
# プレイヤー用
scoreboard objectives remove point
scoreboard objectives add point dummy {"text": "結果ポイント"}
########################################
# アイテムポイント
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
# 鉱石シリーズ
scoreboard players set point min_coal_ore 10
scoreboard players set point min_iron_ore 15
scoreboard players set point min_gold_ore 10
scoreboard players set point min_nether_gold_ore 12
scoreboard players set point min_copper_ore 10
scoreboard players set point min_rs_ore 20
scoreboard players set point min_lp_ore 20
scoreboard players set point min_emerald_ore 100
scoreboard players set point min_diamond_ore 60
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
scoreboard players set point min_obsidian 25
scoreboard players set point min_chorus_plant 20
scoreboard players set point min_chorus_flower 40

###################################
# レベル変化ポイント(storage管理)
#data modify storage holit: name set value []
#data modify storage holit: name append value "axe"
#data modify storage holit: name append value "wood "
#data modify storage holit: name append value "stone"
#data modify storage holit: name append value "iron "
#data modify storage holit: name append value "gold "
#data modify storage holit: name append value "diamond"
#data modify storage holit: name append value "netherite"
#data modify storage holit: name append value "neo"
#点数
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

function holit:load/point

data modify storage holit: frequency set value [0]
data modify storage holit: temp_p set from storage holit: point


function holit:load/frequency
execute store result score クリア者↑ point run data get storage holit: frequency[-1]

#######
data remove storage holit: temp_p 
#data remove storage holit: frequency[0]
#進捗ボード
scoreboard objectives remove level 
scoreboard objectives add level dummy 

#トリガーボード
scoreboard objectives remove adv
scoreboard objectives add adv dummy

# 死
scoreboard objectives remove death
scoreboard objectives add death deathCount

#カウント
scoreboard objectives remove stats 
scoreboard objectives add stats dummy

#タイムボード
scoreboard objectives remove time
scoreboard objectives add time dummy
scoreboard players set 20 time 20
scoreboard players set 1200 time 1200
scoreboard players set 60 time 60

#計算用、pointだと正直やりづらかったので分離。個人スコアは格納しない
scoreboard objectives remove calc
scoreboard objectives add calc dummy
    execute store result score 0 calc run data get storage holit: frequency[0]
    execute store result score 1 calc run data get storage holit: frequency[1]
    execute store result score 2 calc run data get storage holit: frequency[2]
    execute store result score 3 calc run data get storage holit: frequency[3]
    execute store result score 4 calc run data get storage holit: frequency[4]
    execute store result score 5 calc run data get storage holit: frequency[5]
    execute store result score 6 calc run data get storage holit: frequency[6]
    execute store result score 7 calc run data get storage holit: frequency[7]
    execute store result score 8 calc run data get storage holit: frequency[8]
    execute store result score 9 calc run data get storage holit: frequency[9]

#ゲームルール
execute in overworld run gamerule keepInventory true
execute in overworld run gamerule fallDamage false
execute in overworld run gamerule doImmediateRespawn true
execute in overworld run difficulty peaceful

execute in the_nether run gamerule keepInventory true
execute in the_nether run gamerule fallDamage false
execute in the_nether run gamerule doImmediateRespawn true
execute in the_nether run difficulty peaceful

execute in the_end run gamerule keepInventory true
execute in the_end run gamerule fallDamage false
execute in the_end run gamerule doImmediateRespawn true
execute in the_end run difficulty peaceful

gamerule spawnRadius 0
gamerule sendCommandFeedback false

team add sp 
team modify sp color yellow

#範囲規定
#gamemode survival @s
setworldspawn ~ ~ ~ 
worldborder center ~ ~ 
worldborder set 2000
execute unless entity @e[type=armor_stand,tag=inst] positioned ~ 300 ~ run function holit:start/positioned
data modify storage holit: status set value -1b
data modify storage holit: gate set value 0b
tellraw @s [{"text": "リセットしました！"}]
function holit:start/tell
