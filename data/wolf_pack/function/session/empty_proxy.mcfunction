data merge entity @s {Items:[],ChestedHorse:0b}
item replace entity @s saddle with minecraft:air
execute if data entity @s {ChestedHorse:0b} run return 1
return fail
