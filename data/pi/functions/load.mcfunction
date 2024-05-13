#> pi:load
### リロード時処理


# 必要なものたち
    scoreboard objectives add _ dummy "Temporary"
    gamerule commandModificationBlockLimit 65536

# 初期設定
    execute unless score *max _ matches 0.. run scoreboard players set *max _ 1000
    data modify storage pi: Overlap set value false