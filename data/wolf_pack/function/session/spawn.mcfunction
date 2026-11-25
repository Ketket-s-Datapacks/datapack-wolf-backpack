$data merge entity @s {CustomName:"Wolf's Pack",Tame:1b,ChestedHorse:1b,Age:2147483647,Owner:$(player),NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",equipment:{saddle:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"minecraft:player_head","minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGYwYjIyMTc4NmYxOTNjMDZkZDE5YTc4NzVhOTAzNjM1MTEzZjg0NTIzOTI3YmI2OTc2NDIzN2ZlMjA3MDNkZSJ9fX0="}]},"minecraft:item_name":{text:"Wolf Backpack"},"minecraft:lore":[{text:"Your loyal companion's inventory.",color:"gray",italic:false},{text:"Capacity: 15 slots",color:"gray",italic:false},{text:"Sneak + Right Click to open.",color:"gray",italic:false},{text:"Use shears to remove the pack.",color:"gray",italic:false}],"minecraft:enchantments":{"minecraft:binding_curse":1},"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]},"minecraft:custom_data":{wolf_pack_saddle_guard:1b}}}},data:{wolf_pack:{wolf:$(wolf),player:$(player)}}}
$function wolf_pack:session/name_proxy {wolf:$(wolf)}
data remove storage wolf_pack:work prepared
$data modify storage wolf_pack:work prepared set from entity @e[type=minecraft:wolf,tag=wolf_pack.chested,distance=..1,nbt={UUID:$(wolf)},limit=1] data.wolf_pack.Items
execute unless data storage wolf_pack:work prepared run return run function wolf_pack:session/discard
data modify entity @s Items set from storage wolf_pack:work prepared
execute store success score #different wolf_pack.work run data modify storage wolf_pack:work prepared set from entity @s Items
data remove storage wolf_pack:work prepared
execute if score #different wolf_pack.work matches 1 run return run function wolf_pack:session/discard
data modify entity @s data.wolf_pack.proxy set from entity @s UUID
execute store result score #registered wolf_pack.work run function wolf_pack:session/link with entity @s data.wolf_pack
execute unless score #registered wolf_pack.work matches 1 run return run function wolf_pack:session/discard
scoreboard players operation @s wolf_pack.work = #generation wolf_pack.work
attribute @s minecraft:scale base set 0.65
effect give @s minecraft:invisibility infinite 0 true
team join wolf_pack_proxy @s
tag @s add wolf_pack.proxy
tag @s add wolf_pack.ready
