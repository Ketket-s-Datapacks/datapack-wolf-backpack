execute unless data entity @s Items run return fail
$execute unless entity @e[type=minecraft:wolf,tag=wolf_pack.chested,nbt={UUID:$(wolf),data:{wolf_pack:{session:$(proxy)}}},limit=1] run return fail
data modify storage wolf_pack:work cargo set from entity @s Items
data remove storage wolf_pack:work cargo[{components:{"minecraft:custom_data":{wolf_pack_saddle_guard:1b}}}]
# Minecraft only applies the entity NBT when the new list differs.
$execute store success score #changed wolf_pack.work run data modify entity @e[type=minecraft:wolf,tag=wolf_pack.chested,nbt={UUID:$(wolf),data:{wolf_pack:{session:$(proxy)}}},limit=1] data.wolf_pack.Items set from storage wolf_pack:work cargo
execute if score #changed wolf_pack.work matches 1 run scoreboard players set @s wolf_pack.idle 0
$execute store success score #different wolf_pack.work run data modify storage wolf_pack:work cargo set from entity @e[type=minecraft:wolf,tag=wolf_pack.chested,nbt={UUID:$(wolf),data:{wolf_pack:{session:$(proxy)}}},limit=1] data.wolf_pack.Items
# Donkey Items lists each occupied cargo slot once. The saddle has already been excluded.
$execute if score #changed wolf_pack.work matches 1 if score #different wolf_pack.work matches 0 if data storage wolf_pack:work cargo[14] if entity @e[type=minecraft:wolf,tag=wolf_pack.chested,nbt={UUID:$(wolf),Owner:$(player),data:{wolf_pack:{session:$(proxy)}}},limit=1] run advancement grant @a[nbt={UUID:$(player)},advancements={wolf_pack:ready_for_adventure=false},limit=1] only wolf_pack:ready_for_adventure
data remove storage wolf_pack:work cargo
execute if score #different wolf_pack.work matches 1 run return fail
return 1
