#> pi:process/random
#
#   # 乱数生成し、ストレージに格納
#
# @within function pi:process/

# x座標
    execute store result storage pi: Pos.x int 1 run random value -103..99
# z座標
    execute store result storage pi: Pos.z int 1 run random value -107..95
