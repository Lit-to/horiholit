#> holit:game/check
        # 木
    execute if score @s min_oak matches 1.. run function holit:game/check/0_oak
    execute if score @s min_spruce matches 1.. run function holit:game/check/0_spruce
    execute if score @s min_birch matches 1.. run function holit:game/check/0_birch
    execute if score @s min_jungle matches 1.. run function holit:game/check/0_jungle
    execute if score @s min_acacia matches 1.. run function holit:game/check/0_acacia
    execute if score @s min_dark_oak matches 1.. run function holit:game/check/0_dark_oak
    execute if score @s min_crimson matches 1.. run function holit:game/check/0_crimson
    execute if score @s min_warped matches 1.. run function holit:game/check/0_warped
        # 石シリーズ
    execute if score @s min_stone matches 1.. run function holit:game/check/1_stone
    execute if score @s min_andesite matches 1.. run function holit:game/check/4_andesite
    execute if score @s min_diorite matches 1.. run function holit:game/check/4_diorite
    execute if score @s min_granite matches 1.. run function holit:game/check/4_granite
    execute if score @s min_deeps matches 1.. run function holit:game/check/2_deeps
    execute if score @s min_tuff matches 1.. run function holit:game/check/4_tuff
    execute if score @s min_basalt matches 1.. run function holit:game/check/22_basalt
        # 鉱石シリーズ 
    execute if score @s min_coal_ore matches 1.. run function holit:game/check/5_coal
    execute if score @s min_iron_ore matches 1.. run function holit:game/check/7_iron
    execute if score @s min_gold_ore matches 1.. run function holit:game/check/11_gold
    execute if score @s min_mether_gold_ore matches 1.. run function holit:game/check/24_nether_gold
    execute if score @s min_copper_ore matches 1.. run function holit:game/check/9_copper
    execute if score @s min_rs_ore matches 1.. run function holit:game/check/13_redstone
    execute if score @s min_lp_ore matches 1.. run function holit:game/check/15_lapis
    execute if score @s min_diamond_ore matches 1.. run function holit:game/check/17_diamond
    execute if score @s min_emerald_ore matches 1.. run function holit:game/check/19_emerald
        # 深い鉱石シリーズ
    execute if score @s min_deep_coal_ore matches 1.. run function holit:game/check/6_deep_coal
    execute if score @s min_deep_iron_ore matches 1.. run function holit:game/check/8_deep_iron
    execute if score @s min_deep_gold_ore matches 1.. run function holit:game/check/12_deep_gold
    execute if score @s min_deep_copper_ore matches 1.. run function holit:game/check/10_deep_copper
    execute if score @s min_deep_rs_ore matches 1.. run function holit:game/check/14_deeps_redstone
    execute if score @s min_deep_lp_ore matches 1.. run function holit:game/check/16_deeps_lapis
    execute if score @s min_deep_diamond_ore matches 1.. run function holit:game/check/18_deep_diamond
    execute if score @s min_deep_emerald_ore matches 1.. run function holit:game/check/20_deep_emerald
        # ネザーそのほか 
    execute if score @s min_nether_quartz matches 1.. run function holit:game/check/23_quartz
    execute if score @s min_netherrack matches 1.. run function holit:game/check/21_netherrack
    execute if score @s min_ancient_debris matches 1.. run function holit:game/check/25_netherite
    execute if score @s min_obsidian matches 1.. run function holit:game/check/26_obsidian

#カウント

#ポイント反映
execute if score amount point matches 1.. run function holit:game/point
execute if score amount point matches ..0 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 10 0.1

scoreboard players reset @s adv


