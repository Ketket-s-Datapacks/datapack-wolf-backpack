$execute unless entity @e[type=minecraft:wolf,tag=wolf_pack.chested,distance=..8,nbt={UUID:$(wolf),Owner:$(player),data:{wolf_pack:{session:$(proxy)}}},limit=1] run return run function wolf_pack:session/close
$execute if entity @e[type=minecraft:wolf,tag=wolf_pack.chested,distance=..8,nbt={UUID:$(wolf),Sitting:1b},limit=1] run tag @s add wolf_pack.opened_sitting
tag @s remove wolf_pack.ready
tag @s add wolf_pack.open
attribute @s minecraft:scale base set 0.0625
function wolf_pack:session/guard with entity @s data.wolf_pack
