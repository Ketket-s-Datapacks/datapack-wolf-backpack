function wolf_pack:interaction/tick

execute as @e[type=minecraft:donkey,tag=wolf_pack.proxy] at @s run function wolf_pack:session/tick with entity @s data.wolf_pack
tag @a[tag=wolf_pack.wait_for_release,predicate=!wolf_pack:sneaking] remove wolf_pack.wait_for_release
tag @a[tag=wolf_pack.armor_sheared] remove wolf_pack.armor_sheared
execute as @a[gamemode=!spectator,tag=!wolf_pack.wait_for_release,predicate=wolf_pack:sneaking] at @s unless items entity @s weapon.mainhand minecraft:shears unless items entity @s weapon.offhand minecraft:shears unless items entity @s weapon.mainhand minecraft:chest unless items entity @s weapon.offhand minecraft:chest run function wolf_pack:session/select with entity @s
