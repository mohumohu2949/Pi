#> pi:process/main
#
#   # 常時実行処理
#
# @within function pi:tick

# 乱数生成
    function pi:process/random
# テレポート
    execute as @e[tag=Pi.Move] at @s run function pi:process/teleport with storage pi: Pos
# calc
    function pi:process/calc
# actionber
    title @a actionbar [{"text": "円周率","color": "green"},{"text": "：","color": "white"},{"storage":"pi:","nbt":"Calc.Result","color": "aqua"}]
# reset
    data remove storage pi: Pos