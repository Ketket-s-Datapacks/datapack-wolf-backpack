execute as @e[type=minecraft:wolf,tag=wolf_pack.click_candidate] run function wolf_pack:interaction/unmark
scoreboard players set #channel wolf_pack.click -1
execute as @a[gamemode=!spectator] at @s run function wolf_pack:interaction/arm_player
