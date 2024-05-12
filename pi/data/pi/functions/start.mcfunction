#> pi:start
#
#   # スタート
#
# @public

# 盤面整理
    fill 99 -53 95 -103 -53 -107 air
    function pi:summon
# トリガー
    data modify storage pi: Trigger set value true
# max値がマイナスなら初期設定に
    execute unless score *max _ matches 0.. run scoreboard players set *max _ 1000
# max値オーバーだったら変更(重複onならok)
    execute if data storage pi: {Overlap:true} if score *max _ matches 41210.. run scoreboard players set *max _ 41209

# reset
    data remove storage pi: Calc
    data remove storage pi: Pos
    scoreboard players reset *in _
    scoreboard players reset *out _
    scoreboard players reset *a _
    scoreboard players reset *b _
    scoreboard players set *count _ 0