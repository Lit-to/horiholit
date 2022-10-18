#> holit:load/frequency
execute store result score temp calc run data get storage holit: frequency[-1]
data modify storage holit: frequency append value 0
execute store result score temp2 calc run data get storage holit: temp_p[0] 
scoreboard players operation temp calc += temp2 calc 
execute store result storage holit: frequency[-1] int 1 run scoreboard players get temp calc
scoreboard players reset temp calc
scoreboard players reset temp2 calc
data remove storage holit: temp_p[0]
execute unless data storage holit: {temp_p:[]} run function holit:load/frequency 

