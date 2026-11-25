tellraw @a ["","[",{"text":"Wolf Backpack v1.0","color":"gold"},"] ",{"text":"Datapack has been reloaded. Check if there is a new version available. ","color":"green"},{"text":"Modrinth","underlined":true,"color":"white",click_event:{"action":"open_url","url":"https://modrinth.com/project/wolf-backpack"}}]
scoreboard objectives remove wolf_pack.drop
scoreboard objectives remove wolf_pack.window
scoreboard objectives add wolf_pack.click dummy
scoreboard players set #zero wolf_pack.click 0
scoreboard players set #one wolf_pack.click 1
scoreboard objectives add wolf_pack.work dummy
scoreboard objectives add wolf_pack.idle dummy
scoreboard players add #generation wolf_pack.work 1
execute unless data storage wolf_pack:sessions active run data modify storage wolf_pack:sessions active set value []
team add wolf_pack_proxy
team modify wolf_pack_proxy collisionRule never
schedule function wolf_pack:show_packs 25t replace
schedule function wolf_pack:release/watch 4t replace
