execute store result storage wolf_pack:work route.channel int 1 run scoreboard players get @s wolf_pack.click
function wolf_pack:interaction/remove_channel with storage wolf_pack:work route
tag @s remove wolf_pack.click_candidate
scoreboard players reset @s wolf_pack.click
