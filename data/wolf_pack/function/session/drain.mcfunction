execute if items entity @s saddle * unless items entity @s saddle *[minecraft:custom_data~{wolf_pack_saddle_guard:1b}] unless function wolf_pack:session/refund_saddle run return fail
return run function wolf_pack:session/empty_proxy
