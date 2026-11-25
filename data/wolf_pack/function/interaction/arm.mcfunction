# Give nearby owned wolves distinct advancement criteria for this tick.
$execute as @e[type=minecraft:wolf,tag=!wolf_pack.click_candidate,distance=..6,sort=nearest,nbt={Owner:$(UUID)}] run function wolf_pack:interaction/mark
