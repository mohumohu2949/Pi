#> pi:finish
#
#   # 終了
#
# @public

# tellraw
    tellraw @a [{"text": "結果\n","color": "yellow"},{"text": "試行回数","color": "white"},{"score":{"name":"*count","objective":"_"}},{"text": "回 = ","color": "white"},{"storage":"pi:","nbt":"Calc.Result"}]

# reset
    data remove storage pi: Calc
    data remove storage pi: Pos
    data remove storage pi: Trigger
    scoreboard players reset *in _
    scoreboard players reset *out _
    scoreboard players reset *a _
    scoreboard players reset *b _
    scoreboard players reset *count _