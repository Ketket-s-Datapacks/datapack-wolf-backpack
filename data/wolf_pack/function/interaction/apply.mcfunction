# The successful vanilla interaction without an item effect has already toggled Sitting.
execute store success score #after_sit wolf_pack.click if data entity @s {Sitting:1b}
scoreboard players set #interaction_ok wolf_pack.click 0
$execute if score #zero wolf_pack.click matches $(remove) store result score #interaction_ok wolf_pack.click run function wolf_pack:attachment/attach {player:$(player),slot:"$(slot)"}
$execute if score #one wolf_pack.click matches $(remove) store result score #interaction_ok wolf_pack.click run function wolf_pack:release/start {extra:1}
execute unless score #interaction_ok wolf_pack.click matches 1 run return fail
execute if score #after_sit wolf_pack.click matches 1 run data merge entity @s {Sitting:0b}
execute if score #after_sit wolf_pack.click matches 0 run data merge entity @s {Sitting:1b}
$execute if score #zero wolf_pack.click matches $(remove) as @a[nbt={UUID:$(player)},limit=1] at @s run playsound minecraft:item.armor.equip_wolf player @s ~ ~ ~
$execute if score #one wolf_pack.click matches $(remove) as @a[nbt={UUID:$(player)},limit=1] at @s run playsound minecraft:item.shears.snip player @s ~ ~ ~
return 1
