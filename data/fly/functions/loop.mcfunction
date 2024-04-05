function fly:check_player

execute as @a[tag=save_fly.registered] store result score @s rotation.y run data get entity @s Rotation[0]

execute as @a[tag=save_fly.registered] at @s run function fly:sneak-detection
execute as @a[tag=save_fly.registered] at @s run tp @e[tag=save_fly.block,tag=save_fly.secondary] ~ ~-1 ~
execute as @a[tag=save_fly.registered] at @s unless entity @e[tag=save_fly.detector,distance=...001] run function fly:tp_second_shulker
execute as @a[tag=save_fly.registered] at @s run function fly:player

execute as @e[tag=save_fly.interact] at @s run function fly:interaction


execute as @a[tag=save_fly.registered] at @s run tp @e[tag=save_fly.detector] ~ ~ ~