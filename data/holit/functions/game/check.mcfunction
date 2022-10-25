#> holit:game/check
        # 木
    execute if score @s min_oak matches 1.. run scoreboard players operation amount point += point min_oak
    execute if score @s min_spruce matches 1.. run scoreboard players operation amount point += point min_spruce
    execute if score @s min_birch matches 1.. run scoreboard players operation amount point += point min_birch
    execute if score @s min_jungle matches 1.. run scoreboard players operation amount point += point min_jungle
    execute if score @s min_acacia matches 1.. run scoreboard players operation amount point += point min_acacia
    execute if score @s min_dark_oak matches 1.. run scoreboard players operation amount point += point min_dark_oak
    execute if score @s min_crimson matches 1.. run scoreboard players operation amount point += point min_crimson
    execute if score @s min_warped matches 1.. run scoreboard players operation amount point += point min_warped
        # 石シリーズ
    execute if score @s min_stone matches 1.. run scoreboard players operation amount point += point min_stone
    execute if score @s min_andesite matches 1.. run scoreboard players operation amount point += point min_andesite
    execute if score @s min_diorite matches 1.. run scoreboard players operation amount point += point min_diorite
    execute if score @s min_granite matches 1.. run scoreboard players operation amount point += point min_granite
    execute if score @s min_deeps matches 1.. run scoreboard players operation amount point += point min_deeps
    execute if score @s min_tuff matches 1.. run scoreboard players operation amount point += point min_tuff
    execute if score @s min_basalt matches 1.. run scoreboard players operation amount point += point min_basalt
        # 鉱石シリーズ 
    execute if score @s min_coal_ore matches 1.. run scoreboard players operation amount point += point min_coal_ore
    execute if score @s min_iron_ore matches 1.. run scoreboard players operation amount point += point min_iron_ore
    execute if score @s min_gold_ore matches 1.. run scoreboard players operation amount point += point min_gold_ore
    execute if score @s min_mether_gold_ore matches 1.. run scoreboard players operation amount point += point min_nether_gold_ore
    execute if score @s min_copper_ore matches 1.. run scoreboard players operation amount point += point min_copper_ore
    execute if score @s min_rs_ore matches 1.. run scoreboard players operation amount point += point min_rs_ore
    execute if score @s min_lp_ore matches 1.. run scoreboard players operation amount point += point min_lp_ore
    execute if score @s min_diamond_ore matches 1.. run scoreboard players operation amount point += point min_diamond_ore
    execute if score @s min_emerald_ore matches 1.. run scoreboard players operation amount point += point min_emerald_ore
        # 深い鉱石シリーズ
    execute if score @s min_deep_coal_ore matches 1.. run scoreboard players operation amount point += point min_deep_coal_ore
    execute if score @s min_deep_iron_ore matches 1.. run scoreboard players operation amount point += point min_deep_iron_ore
    execute if score @s min_deep_gold_ore matches 1.. run scoreboard players operation amount point += point min_deep_gold_ore
    execute if score @s min_deep_copper_ore matches 1.. run scoreboard players operation amount point += point min_deep_copper_ore
    execute if score @s min_deep_rs_ore matches 1.. run scoreboard players operation amount point += point min_deep_rs_ore
    execute if score @s min_deep_lp_ore matches 1.. run scoreboard players operation amount point += point min_deep_lp_ore
    execute if score @s min_deep_diamond_ore matches 1.. run scoreboard players operation amount point += point min_deep_diamond_ore
    execute if score @s min_deep_emerald_ore matches 1.. run scoreboard players operation amount point += point min_deep_emerald_ore
        # ネザーそのほか 
    execute if score @s min_nether_quartz matches 1.. run scoreboard players operation amount point += point min_nether_quartz
    execute if score @s min_netherrack matches 1.. run scoreboard players operation amount point += point min_netherrack
    execute if score @s min_ancient_debris matches 1.. run scoreboard players operation amount point += point min_ancient_debris
    execute if score @s min_obsidian matches 1.. run function holit:game/percent/obsidian

#カウント
    execute if score @s min_oak matches 1.. run function holit:game/count/0_wood
    execute if score @s min_spruce matches 1.. run function holit:game/count/0_wood
    execute if score @s min_birch matches 1.. run function holit:game/count/0_wood
    execute if score @s min_jungle matches 1.. run function holit:game/count/0_wood
    execute if score @s min_acacia matches 1.. run function holit:game/count/0_wood
    execute if score @s min_dark_oak matches 1.. run function holit:game/count/0_wood
    execute if score @s min_crimson matches 1.. run function holit:game/count/0_wood
    execute if score @s min_warped matches 1.. run function holit:game/count/0_wood
        # 石シリーズ
    execute if score @s min_stone matches 1.. run function holit:game/count/1_stone
    execute if score @s min_andesite matches 1.. run function holit:game/count/4_granite
    execute if score @s min_diorite matches 1.. run function holit:game/count/4_granite
    execute if score @s min_granite matches 1.. run function holit:game/count/4_granite
    execute if score @s min_deeps matches 1.. run function holit:game/count/2_deepslate
    execute if score @s min_tuff matches 1.. run function holit:game/count/4_granite
    execute if score @s min_basalt matches 1.. run function holit:game/count/22_basalt
    execute if score @s min_mossy matches 1.. run function holit:game/count/3_mossy
        # 鉱石シリーズ 
    execute if score @s min_coal_ore matches 1.. run function holit:game/count/5_coal
    execute if score @s min_iron_ore matches 1.. run function holit:game/count/7_iron
    execute if score @s min_gold_ore matches 1.. run function holit:game/count/11_gold
    execute if score @s min_nether_gold_ore matches 1.. run function holit:game/count/24_nether_gold
    execute if score @s min_copper_ore matches 1.. run function holit:game/count/9_copper
    execute if score @s min_rs_ore matches 1.. run function holit:game/count/13_redstone
    execute if score @s min_lp_ore matches 1.. run function holit:game/count/15_lapis_lazuli
    execute if score @s min_diamond_ore matches 1.. run function holit:game/count/17_diamond
    execute if score @s min_emerald_ore matches 1.. run function holit:game/count/19_emerald
        # 深い鉱石シリーズ
    execute if score @s min_deep_coal_ore matches 1.. run function holit:game/count/6_deep_coal
    execute if score @s min_deep_iron_ore matches 1.. run function holit:game/count/8_deep_iron
    execute if score @s min_deep_gold_ore matches 1.. run function holit:game/count/12_deep_gold
    execute if score @s min_deep_copper_ore matches 1.. run function holit:game/count/10_deep_copper
    execute if score @s min_deep_rs_ore matches 1.. run function holit:game/count/14_deep_rs
    execute if score @s min_deep_lp_ore matches 1.. run function holit:game/count/16_deep_lp
    execute if score @s min_deep_diamond_ore matches 1.. run function holit:game/count/18_deep_diamond
    execute if score @s min_deep_emerald_ore matches 1.. run function holit:game/count/20_deep_emerald
        # ネザーそのほか 
    execute if score @s min_nether_quartz matches 1.. run function holit:game/count/23_quartz
    execute if score @s min_netherrack matches 1.. run function holit:game/count/21_netherrack
    execute if score @s min_ancient_debris matches 1.. run function holit:game/count/25_netherite
    execute if score @s min_obsidian matches 1.. run function holit:game/count/26_obsidian

# リセット
        # 木
    execute if score @s min_oak matches 1.. run scoreboard players reset @s min_oak
    execute if score @s min_spruce matches 1.. run scoreboard players reset @s min_spruce
    execute if score @s min_birch matches 1.. run scoreboard players reset @s min_birch
    execute if score @s min_jungle matches 1.. run scoreboard players reset @s min_jungle
    execute if score @s min_acacia matches 1.. run scoreboard players reset @s min_acacia
    execute if score @s min_dark_oak matches 1.. run scoreboard players reset @s min_dark_oak
    execute if score @s min_crimson matches 1.. run scoreboard players reset @s min_crimson
    execute if score @s min_warped matches 1.. run scoreboard players reset @s min_warped
        # 石シリーズ
    execute if score @s min_stone matches 1.. run scoreboard players reset @s min_stone
    execute if score @s min_andesite matches 1.. run scoreboard players reset @s min_andesite
    execute if score @s min_diorite matches 1.. run scoreboard players reset @s min_diorite
    execute if score @s min_granite matches 1.. run scoreboard players reset @s min_granite
    execute if score @s min_deeps matches 1.. run scoreboard players reset @s min_deeps
    execute if score @s min_tuff matches 1.. run scoreboard players reset @s min_tuff
    execute if score @s min_basalt matches 1.. run scoreboard players reset @s min_basalt
    execute if score @s min_mossy matches 1.. run scoreboard players reset @s min_mossy
        # 鉱石シリーズ 
    execute if score @s min_coal_ore matches 1.. run scoreboard players reset @s min_coal_ore
    execute if score @s min_iron_ore matches 1.. run scoreboard players reset @s min_iron_ore
    execute if score @s min_gold_ore matches 1.. run scoreboard players reset @s min_gold_ore
    execute if score @s min_copper_ore matches 1.. run scoreboard players reset @s min_copper_ore
    execute if score @s min_rs_ore matches 1.. run scoreboard players reset @s min_rs_ore
    execute if score @s min_lp_ore matches 1.. run scoreboard players reset @s min_lp_ore
    execute if score @s min_diamond_ore matches 1.. run scoreboard players reset @s min_diamond_ore
    execute if score @s min_emerald_ore matches 1.. run scoreboard players reset @s min_emerald_ore
        # 深い鉱石シリーズ
    execute if score @s min_deep_coal_ore matches 1.. run scoreboard players reset @s min_deep_coal_ore
    execute if score @s min_deep_iron_ore matches 1.. run scoreboard players reset @s min_deep_iron_ore
    execute if score @s min_deep_gold_ore matches 1.. run scoreboard players reset @s min_deep_gold_ore
    execute if score @s min_nether_gold_ore matches 1.. run scoreboard players reset @s min_nether_gold_ore
    execute if score @s min_deep_copper_ore matches 1.. run scoreboard players reset @s min_deep_copper_ore
    execute if score @s min_deep_rs_ore matches 1.. run scoreboard players reset @s min_deep_rs_ore
    execute if score @s min_deep_lp_ore matches 1.. run scoreboard players reset @s min_deep_lp_ore
    execute if score @s min_deep_diamond_ore matches 1.. run scoreboard players reset @s min_deep_diamond_ore
    execute if score @s min_deep_emerald_ore matches 1.. run scoreboard players reset @s min_deep_emerald_ore
        # ネザーそのほか 
    execute if score @s min_nether_quartz matches 1.. run scoreboard players reset @s min_nether_quartz
    execute if score @s min_netherrack matches 1.. run scoreboard players reset @s min_netherrack
    execute if score @s min_ancient_debris matches 1.. run scoreboard players reset @s min_ancient_debris
    execute if score @s min_obsidian matches 1.. run scoreboard players reset @s min_obsidian

#ポイント反映
execute if score amount point matches 1.. run function holit:game/point
execute if score amount point matches ..0 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 10 0.1

scoreboard players reset @s adv


