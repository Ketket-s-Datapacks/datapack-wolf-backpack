# Use the wolf's raw text component, including its formatting, as the first child.
data modify storage wolf_pack:work title set value {text:"",extra:[{text:""},{text:"'s Pack"}]}
$execute store success score #named wolf_pack.work run data modify storage wolf_pack:work title.extra[0] set from entity @e[type=minecraft:wolf,tag=wolf_pack.chested,distance=..1,nbt={UUID:$(wolf)},limit=1] CustomName
execute if score #named wolf_pack.work matches 1 run data modify entity @s CustomName set from storage wolf_pack:work title
data remove storage wolf_pack:work title
