$execute store success score #linked wolf_pack.work run data modify entity @e[type=minecraft:wolf,tag=wolf_pack.chested,distance=..1,nbt={UUID:$(wolf)},limit=1] data.wolf_pack.session set value $(proxy)
execute unless score #linked wolf_pack.work matches 1 run return fail
execute if data storage wolf_pack:sessions active run data modify storage wolf_pack:sessions active append from entity @s data.wolf_pack
$execute if data storage wolf_pack:sessions active[{proxy:$(proxy)}] run return 1
$data remove entity @e[type=minecraft:wolf,tag=wolf_pack.chested,nbt={UUID:$(wolf)},limit=1] data.wolf_pack.session
return fail
