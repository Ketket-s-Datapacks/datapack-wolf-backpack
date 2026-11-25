scoreboard players set #drained wolf_pack.work 0
$execute as @e[type=minecraft:donkey,tag=wolf_pack.proxy,nbt={UUID:$(proxy),data:{wolf_pack:{wolf:$(wolf)}}},limit=1] at @s store result score #drained wolf_pack.work run function wolf_pack:session/drain
execute unless score #drained wolf_pack.work matches 1 run return fail
$data remove storage wolf_pack:sessions active[{proxy:$(proxy)}]
$execute as @e[type=minecraft:donkey,tag=wolf_pack.proxy,nbt={UUID:$(proxy)},limit=1] run function wolf_pack:session/remove_proxy
return 1
