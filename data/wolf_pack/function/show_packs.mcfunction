execute as @e[type=minecraft:wolf,tag=wolf_pack.chested] at @s positioned ~ ~0.3 ~ run particle minecraft:dust{color:[0.53f,0.32f,0.15f],scale:1f} ~ ~0.6 ~ 0.13 0.13 0.13 0 3 normal @a[distance=..12]
schedule function wolf_pack:show_packs 25t replace
