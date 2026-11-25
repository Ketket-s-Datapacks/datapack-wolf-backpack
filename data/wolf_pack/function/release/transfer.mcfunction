scoreboard players set #captured wolf_pack.work 1
execute if data storage wolf_pack:work release.proxy store result score #captured wolf_pack.work run function wolf_pack:release/capture_proxy with storage wolf_pack:work release
execute unless score #captured wolf_pack.work matches 1 run return fail
execute store result score #staged wolf_pack.work summon minecraft:chest_minecart run function wolf_pack:release/stage_cart
execute unless score #staged wolf_pack.work matches 1 run return run function wolf_pack:release/abort
execute store result score #transferred wolf_pack.work run function wolf_pack:release/commit with storage wolf_pack:work release
execute unless score #transferred wolf_pack.work matches 1 run return run function wolf_pack:release/abort
return 1
