function fly:check_player


execute as @a[tag=save_fly.registered] store result score @s rotation.y run data get entity @s Rotation[0]

execute as @a[tag=save_fly.registered] at @s run function fly:sneak-detection
execute as @a[tag=save_fly.registered] at @s run tp @e[tag=save_fly.block,tag=!save_fly.secondary] ~ ~-1 ~
execute as @a[tag=save_fly.registered] at @s run function fly:tp_second_shulker
execute as @a[tag=save_fly.registered] at @s run tp @e[tag=save_fly.interact] ~ ~1 ~
execute as @a[tag=save_fly.registered] at @s if block ~ ~-1 ~ air if entity @e[tag=save_fly.block,distance=..5] run effect give @s resistance 5 127 true

execute as @e[tag=save_fly.interact] at @s run function fly:interaction