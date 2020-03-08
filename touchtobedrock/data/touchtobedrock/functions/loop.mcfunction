# Defaulttags
tag @e[tag=!bedrock] add bedrock
tag @e[tag=bedrockplace] remove bedrockplace

### Bodytouch

execute as @a[tag=bedrock] at @s unless block ~ ~ ~-0.4 #touchtobedrock:nonsolid run setblock ~ ~ ~-0.4 minecraft:bedrock
execute as @a[tag=bedrock] at @s unless block ~ ~ ~0.4 #touchtobedrock:nonsolid run setblock ~ ~ ~0.4 minecraft:bedrock
execute as @a[tag=bedrock] at @s unless block ~-0.4 ~ ~ #touchtobedrock:nonsolid run setblock ~-0.4 ~ ~ minecraft:bedrock
execute as @a[tag=bedrock] at @s unless block ~0.4 ~ ~ #touchtobedrock:nonsolid run setblock ~0.4 ~ ~ minecraft:bedrock
execute as @a[tag=bedrock] at @s unless block ~ ~1 ~-0.4 #touchtobedrock:nonsolid run setblock ~ ~1 ~-0.4 minecraft:bedrock
execute as @a[tag=bedrock] at @s unless block ~ ~1 ~0.4 #touchtobedrock:nonsolid run setblock ~ ~1 ~0.4 minecraft:bedrock
execute as @a[tag=bedrock] at @s unless block ~-0.4 ~1 ~ #touchtobedrock:nonsolid run setblock ~-0.4 ~1 ~ minecraft:bedrock
execute as @a[tag=bedrock] at @s unless block ~0.4 ~1 ~ #touchtobedrock:nonsolid run setblock ~0.4 ~1 ~ minecraft:bedrock
execute as @a[tag=bedrock] at @s unless block ~ ~-0.1 ~ #touchtobedrock:nonsolid run setblock ~ ~-1 ~ minecraft:bedrock
execute as @a[tag=bedrock] at @s unless block ~ ~2 ~ #touchtobedrock:nonsolid unless score @s bedrocksneak matches 1.. run setblock ~ ~2 ~ minecraft:bedrock

scoreboard players reset @a[scores={bedrocksneak=1..}] bedrocksneak

# Test for sneaking is just to make sure the block above you doesn't get replaced while sneaking

### Handtouch

execute as @a[scores={bedrockcoas=1..},nbt={SelectedItem:{tag:{CustomModelData:9001,Unbreakable:1b}}}] run tag @s add bedrockplace
scoreboard players reset @a[scores={bedrockcoas=1..}] bedrockcoas

# Setblock
execute as @e[tag=bedrockplace] at @s anchored eyes unless block ^ ^ ^1 #touchtobedrock:nonsolid run setblock ^ ^ ^1 minecraft:bedrock
execute as @e[tag=bedrockplace] at @s anchored eyes if block ^ ^ ^1 #touchtobedrock:nonsolid unless block ^ ^ ^2 #touchtobedrock:nonsolid run setblock ^ ^ ^2 minecraft:bedrock
execute as @e[tag=bedrockplace] at @s anchored eyes if block ^ ^ ^1 #touchtobedrock:nonsolid if block ^ ^ ^2 #touchtobedrock:nonsolid unless block ^ ^ ^3 #touchtobedrock:nonsolid run setblock ^ ^ ^3 minecraft:bedrock
execute as @e[tag=bedrockplace] at @s anchored eyes if block ^ ^ ^1 #touchtobedrock:nonsolid if block ^ ^ ^2 #touchtobedrock:nonsolid if block ^ ^ ^3 #touchtobedrock:nonsolid unless block ^ ^ ^4 #touchtobedrock:nonsolid run setblock ^ ^ ^4 minecraft:bedrock
execute as @e[tag=bedrockplace] at @s anchored eyes if block ^ ^ ^1 #touchtobedrock:nonsolid if block ^ ^ ^2 #touchtobedrock:nonsolid if block ^ ^ ^3 #touchtobedrock:nonsolid if block ^ ^ ^4 #touchtobedrock:nonsolid unless block ^ ^ ^5 #touchtobedrock:nonsolid run setblock ^ ^ ^5 minecraft:bedrock



### Command for COAS: /give @s minecraft:carrot_on_a_stick{Unbreakable:1b,CustomModelData:9001}
