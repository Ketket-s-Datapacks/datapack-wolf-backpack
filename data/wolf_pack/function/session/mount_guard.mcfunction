$execute unless entity @e[type=minecraft:donkey,tag=wolf_pack.proxy,distance=..1,nbt={UUID:$(proxy)},limit=1] run return run kill @s
tag @s add wolf_pack.menu_guard
$execute store success score #mounted wolf_pack.work run ride @s mount @e[type=minecraft:donkey,tag=wolf_pack.proxy,distance=..1,nbt={UUID:$(proxy)},limit=1]
execute unless score #mounted wolf_pack.work matches 1 run kill @s
