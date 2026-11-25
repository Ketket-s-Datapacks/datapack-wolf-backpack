scoreboard players set #saved wolf_pack.work 1
execute unless entity @s[tag=wolf_pack.committed] store result score #saved wolf_pack.work run function wolf_pack:session/save with entity @s data.wolf_pack
execute unless score #saved wolf_pack.work matches 1 run return fail
tag @s add wolf_pack.committed
$execute unless entity @e[type=minecraft:wolf,tag=wolf_pack.chested,nbt={UUID:$(wolf),data:{wolf_pack:{session:$(proxy)}}},limit=1] run return fail
execute unless function wolf_pack:session/drain run return fail
$data remove entity @e[type=minecraft:wolf,tag=wolf_pack.chested,nbt={UUID:$(wolf),data:{wolf_pack:{session:$(proxy)}}},limit=1] data.wolf_pack.session
$data remove storage wolf_pack:sessions active[{proxy:$(proxy)}]
return run function wolf_pack:session/remove_proxy
