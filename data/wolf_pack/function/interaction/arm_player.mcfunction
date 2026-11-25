execute if items entity @s weapon.mainhand minecraft:chest[!minecraft:custom_data] run return run function wolf_pack:interaction/arm with entity @s
execute if items entity @s weapon.mainhand minecraft:shears run return run function wolf_pack:interaction/arm with entity @s
execute if items entity @s weapon.mainhand * run return 0
execute if items entity @s weapon.offhand minecraft:chest[!minecraft:custom_data] run return run function wolf_pack:interaction/arm with entity @s
execute if items entity @s weapon.offhand minecraft:shears run function wolf_pack:interaction/arm with entity @s
