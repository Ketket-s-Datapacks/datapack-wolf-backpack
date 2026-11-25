execute unless data entity @s data.wolf_pack.Items run return fail
$data modify storage wolf_pack:work release set value {extra:$(extra)}
data modify storage wolf_pack:work release.wolf set from entity @s UUID
data modify storage wolf_pack:work release.proxy set from entity @s data.wolf_pack.session
data modify storage wolf_pack:work release.cargo set from entity @s data.wolf_pack.Items
execute store result score #released wolf_pack.work run function wolf_pack:release/transfer
data remove storage wolf_pack:work release
return run scoreboard players get #released wolf_pack.work
