#> pi:process/calc
#
#   # 円周率計算
#
# @within function pi:process/

# 1000000倍の値をスコアに入れるために一旦移動
    execute store result storage pi: Calc.In int 1 run scoreboard players get *in _
    execute store result storage pi: Calc.Out int 1 run scoreboard players get *out _
# スコアホルダーに格納
    execute store result score *a _ run data get storage pi: Calc.In 1000
    execute store result score *b _ run data get storage pi: Calc.Out 1
# 計算結果を代入
    execute store result storage pi: Calc.Result double 0.001 run scoreboard players operation *a _ /= *b _
# reset
    data remove storage pi: Calc.In
    data remove storage pi: Calc.Out