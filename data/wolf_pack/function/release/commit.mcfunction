$execute unless entity @e[type=minecraft:chest_minecart,tag=wolf_pack.drop,nbt={UUID:$(cart)},limit=1] run return fail
scoreboard players set #retired wolf_pack.work 1
execute if data storage wolf_pack:work release.proxy store result score #retired wolf_pack.work run function wolf_pack:release/retire_proxy with storage wolf_pack:work release
execute unless score #retired wolf_pack.work matches 1 run return fail
data remove entity @s data.wolf_pack
tag @s remove wolf_pack.chested
tag @s remove wolf_pack.watched
execute on passengers if entity @s[type=minecraft:marker,tag=wolf_pack.death_watcher] run kill @s
$return run kill @e[type=minecraft:chest_minecart,tag=wolf_pack.drop,nbt={UUID:$(cart)},limit=1]
