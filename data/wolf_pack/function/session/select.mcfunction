$execute if data storage wolf_pack:sessions active[{player:$(UUID)}] run return fail
$execute as @e[type=minecraft:wolf,tag=wolf_pack.chested,distance=..3,nbt={Owner:$(UUID)}] at @s unless data entity @s data.wolf_pack.session if data entity @s data.wolf_pack.Items run function wolf_pack:session/prepare_looked_at with entity @s
