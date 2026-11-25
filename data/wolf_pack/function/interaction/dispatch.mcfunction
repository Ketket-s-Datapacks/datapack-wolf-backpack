advancement revoke @s only wolf_pack:wolf_click
execute if entity @s[tag=wolf_pack.armor_sheared] run return run tag @s remove wolf_pack.armor_sheared
$data modify storage wolf_pack:work click set value {channel:$(channel),slot:"weapon.mainhand"}
data modify storage wolf_pack:work click.player set from entity @s UUID
execute unless items entity @s weapon.mainhand * run data modify storage wolf_pack:work click.slot set value "weapon.offhand"
function wolf_pack:interaction/resolve with storage wolf_pack:work click
data remove storage wolf_pack:work click
