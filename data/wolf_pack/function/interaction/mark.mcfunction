execute if score #channel wolf_pack.click matches 31.. run return 0
scoreboard players add #channel wolf_pack.click 1
scoreboard players operation @s wolf_pack.click = #channel wolf_pack.click
execute store result storage wolf_pack:work route.channel int 1 run scoreboard players get @s wolf_pack.click
function wolf_pack:interaction/add_channel with storage wolf_pack:work route
tag @s add wolf_pack.click_candidate
