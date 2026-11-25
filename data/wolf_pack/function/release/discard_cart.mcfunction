$data modify entity @e[type=minecraft:chest_minecart,tag=wolf_pack.drop,nbt={UUID:$(cart)},limit=1] Items set value []
$kill @e[type=minecraft:chest_minecart,tag=wolf_pack.drop,nbt={UUID:$(cart)},limit=1]
