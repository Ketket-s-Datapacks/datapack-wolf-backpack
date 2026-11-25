$execute as @e[type=minecraft:donkey,tag=wolf_pack.proxy,nbt={UUID:$(proxy),data:{wolf_pack:{wolf:$(wolf)}}},limit=1] run return run function wolf_pack:release/capture_current
return fail
