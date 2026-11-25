$execute store success score #watching wolf_pack.work run ride @s mount @e[type=minecraft:wolf,tag=wolf_pack.chested,distance=..1,nbt={UUID:$(wolf)},limit=1]
execute unless score #watching wolf_pack.work matches 1 run return run kill @s
tag @s add wolf_pack.death_watcher
execute on vehicle run tag @s add wolf_pack.watched
