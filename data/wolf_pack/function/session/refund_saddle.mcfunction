data modify storage wolf_pack:work saddle set from entity @s equipment.saddle
execute store result score #refunded wolf_pack.work run function wolf_pack:session/drop_saddle with storage wolf_pack:work
data remove storage wolf_pack:work saddle
execute unless score #refunded wolf_pack.work matches 1 run return fail
return run item replace entity @s saddle with minecraft:air
