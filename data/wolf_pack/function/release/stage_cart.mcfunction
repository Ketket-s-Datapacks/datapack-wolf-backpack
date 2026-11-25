tag @s add wolf_pack.drop
data modify storage wolf_pack:work release.cart set from entity @s UUID
data modify entity @s Items set from storage wolf_pack:work release.cargo
execute unless data entity @s Items run return fail
data modify storage wolf_pack:work release.verify set from storage wolf_pack:work release.cargo
execute store success score #different wolf_pack.work run data modify storage wolf_pack:work release.verify set from entity @s Items
execute if score #different wolf_pack.work matches 1 run return fail
# Slots 0–14 hold the wolf cargo. Slot 15 can carry the returned chest.
execute if data storage wolf_pack:work release{extra:1} run item replace entity @s container.15 with minecraft:chest
execute if data storage wolf_pack:work release{extra:1} unless items entity @s container.15 minecraft:chest run return fail
return 1
