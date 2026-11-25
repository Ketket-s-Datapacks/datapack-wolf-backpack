execute if entity @s[tag=wolf_pack.closing] run return 1
tag @s remove wolf_pack.ready
attribute @s minecraft:scale base set 0.0625
# Reloading the donkey data replaces the container object and invalidates old menus.
data modify entity @s data.wolf_pack.closing set value 1b
execute unless data entity @s data.wolf_pack{closing:1b} run return fail
tag @s add wolf_pack.closing
execute on passengers if entity @s[type=minecraft:player] run ride @s dismount
execute unless entity @s[tag=wolf_pack.open] run function wolf_pack:session/guard with entity @s data.wolf_pack
return 1
