#> pi:process/teleport
#
#   # テレポート処理
#
# @within function pi:process/

# マクロで実行
    $tp $(x) -53 $(z)
# 円の内外判定
    execute if data storage pi: {Overlap:false} if block ~ ~ ~ air run function pi:process/judge/
    execute if data storage pi: {Overlap:true} run function pi:process/judge/
