#> pi:process/judge/select
#
#   # 円の外か中かの判定
#
# @within function pi:process/teleport

# カウンタ
    scoreboard players add *count _ 1
# 中
    execute if entity @e[distance=..101.2,tag=Pi.Center] run function pi:process/judge/in
# 外
    execute unless entity @e[distance=..101.2,tag=Pi.Center] run function pi:process/judge/out