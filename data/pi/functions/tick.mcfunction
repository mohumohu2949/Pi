#> pi:tick
### 常時実行される処理

# 実行中の処理
    execute if data storage pi: {Trigger:true} if score *count _ <= *max _ run function pi:process/
# 終了処理
    execute if score *count _ >= *max _ run function pi:finish
# max値オーバーだったら変更(重複onならok)
    execute if data storage pi: {Overlap:false} if score *max _ matches 41210.. run scoreboard players set *max _ 41209
