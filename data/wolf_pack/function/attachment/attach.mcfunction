execute if data entity @s data.wolf_pack run return fail
execute store success score #initialized wolf_pack.work run data modify entity @s data.wolf_pack set value {Items:[]}
execute unless score #initialized wolf_pack.work matches 1 run return fail

scoreboard players set #consumed wolf_pack.work 0
$execute as @a[nbt={UUID:$(player)},limit=1] if items entity @s $(slot) minecraft:chest[!minecraft:custom_data] if entity @s[gamemode=creative] run scoreboard players set #consumed wolf_pack.work 1
$execute as @a[gamemode=!creative,nbt={UUID:$(player)},limit=1] if items entity @s $(slot) minecraft:chest[!minecraft:custom_data] store success score #consumed wolf_pack.work run item modify entity @s $(slot) wolf_pack:consume_chest
execute unless score #consumed wolf_pack.work matches 1 run data remove entity @s data.wolf_pack
execute unless score #consumed wolf_pack.work matches 1 run return fail
tag @s add wolf_pack.chested
$advancement grant @a[nbt={UUID:$(player)},advancements={wolf_pack:a_helping_paw=false},limit=1] only wolf_pack:a_helping_paw
function wolf_pack:release/create_watcher with entity @s
return 1
