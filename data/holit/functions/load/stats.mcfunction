#> holit:load/stats
#まとめてしまったものを表示するためだけに使うスコアたち
# 木
scoreboard objectives remove stats_oak
scoreboard objectives remove stats_spruce
scoreboard objectives remove stats_birch
scoreboard objectives remove stats_jungle
scoreboard objectives remove stats_acacia
scoreboard objectives remove stats_dark_oak
scoreboard objectives remove stats_crimson
scoreboard objectives remove stats_warped

#火成岩シリーズ
scoreboard objectives remove stats_andesite
scoreboard objectives remove stats_diorite
scoreboard objectives remove stats_granite
scoreboard objectives remove stats_tuff
scoreboard objectives remove stats_basalt

# 木
scoreboard objectives add stats_oak mined:oak_log
scoreboard objectives add stats_spruce mined:spruce_log
scoreboard objectives add stats_birch mined:birch_log
scoreboard objectives add stats_jungle mined:jungle_log
scoreboard objectives add stats_acacia mined:acacia_log
scoreboard objectives add stats_dark_oak mined:dark_oak_log
scoreboard objectives add stats_crimson mined:crimson_stem
scoreboard objectives add stats_warped mined:warped_stem
#火成岩シリーズ
scoreboard objectives add stats_andesite mined:andesite
scoreboard objectives add stats_diorite mined:diorite
scoreboard objectives add stats_granite mined:granite
scoreboard objectives add stats_tuff mined:tuff
scoreboard objectives add stats_basalt mined:basalt


