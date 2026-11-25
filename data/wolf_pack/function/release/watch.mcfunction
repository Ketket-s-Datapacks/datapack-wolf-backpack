execute as @e[type=minecraft:wolf,tag=wolf_pack.chested,tag=!wolf_pack.watched] at @s run function wolf_pack:release/create_watcher with entity @s
execute as @e[type=minecraft:marker,tag=wolf_pack.death_watcher] on vehicle if entity @s[type=minecraft:wolf,tag=wolf_pack.chested,nbt={Health:0.0f}] at @s run function wolf_pack:release/start {extra:0}
execute as @e[type=minecraft:marker,tag=wolf_pack.death_watcher] unless function wolf_pack:release/has_wolf run kill @s
schedule function wolf_pack:release/watch 4t replace
