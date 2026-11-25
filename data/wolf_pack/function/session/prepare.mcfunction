data modify storage wolf_pack:work setup set value {}
data modify storage wolf_pack:work setup.wolf set from entity @s UUID
data modify storage wolf_pack:work setup.player set from entity @s Owner
execute summon minecraft:donkey run function wolf_pack:session/spawn with storage wolf_pack:work setup
data remove storage wolf_pack:work setup
