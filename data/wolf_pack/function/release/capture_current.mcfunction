execute unless function wolf_pack:session/seal run return fail
execute if entity @s[tag=wolf_pack.committed] unless data entity @s Items run return 1
execute unless data entity @s Items run return fail
data modify storage wolf_pack:work release.cargo set from entity @s Items
data remove storage wolf_pack:work release.cargo[{components:{"minecraft:custom_data":{wolf_pack_saddle_guard:1b}}}]
return 1
