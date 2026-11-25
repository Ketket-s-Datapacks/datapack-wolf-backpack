execute if entity @s[tag=wolf_pack.closing] run return run function wolf_pack:session/finish with entity @s data.wolf_pack
execute unless score @s wolf_pack.work = #generation wolf_pack.work run return run function wolf_pack:session/close
$execute unless entity @e[type=minecraft:wolf,tag=wolf_pack.chested,distance=..8,nbt={UUID:$(wolf),Owner:$(player),data:{wolf_pack:{session:$(proxy)}}},limit=1] run return run function wolf_pack:session/close
$execute if entity @s[tag=wolf_pack.opened_sitting] unless entity @e[type=minecraft:wolf,tag=wolf_pack.chested,distance=..8,nbt={UUID:$(wolf),Sitting:1b},limit=1] run return run function wolf_pack:session/close_until_release with entity @s data.wolf_pack
$execute at @e[type=minecraft:wolf,tag=wolf_pack.chested,nbt={UUID:$(wolf)},limit=1] unless entity @a[gamemode=!spectator,distance=..4,nbt={UUID:$(player)},nbt=!{Health:0.0f},limit=1] run return run function wolf_pack:session/close
execute on passengers if entity @s[type=minecraft:player] run ride @s dismount
$execute if entity @s[tag=wolf_pack.ready] unless entity @a[distance=..8,nbt={UUID:$(player)},predicate=wolf_pack:sneaking,limit=1] run return run function wolf_pack:session/close
$execute if entity @s[tag=wolf_pack.open,tag=wolf_pack.released] if entity @a[distance=..8,nbt={UUID:$(player)},predicate=wolf_pack:sneaking,limit=1] run return run function wolf_pack:session/close
$execute if entity @s[tag=wolf_pack.open] unless entity @a[distance=..8,nbt={UUID:$(player)},predicate=wolf_pack:sneaking,limit=1] run tag @s add wolf_pack.released
$execute at @e[type=minecraft:wolf,tag=wolf_pack.chested,nbt={UUID:$(wolf)},limit=1] unless entity @s[distance=..0.03] run tp @s ~ ~ ~
execute unless entity @s[tag=wolf_pack.open] run return 0
scoreboard players add @s wolf_pack.idle 1
function wolf_pack:session/save with entity @s data.wolf_pack
execute if score @s wolf_pack.idle matches 2400.. run function wolf_pack:session/close_until_release with entity @s data.wolf_pack
