#> holit:load
#execute if data storage holit: {status:1b} run function holit:fin
#execute if data storage holit: {status:0b} run function holit:load/reset
#execute if data storage holit: {status:-1b} run function holit:load/reset
execute unless data storage holit: {status:1b} run function holit:load/reset

