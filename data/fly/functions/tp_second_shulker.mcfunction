tp @e[tag=save_fly.block,tag=save_fly.secondary] ~ ~-1 ~

execute if score @s rotation.y matches -67..67 as @e[tag=save_fly.block,tag=save_fly.secondary] at @s run tp @s ~ ~ ~1
execute if score @s rotation.y matches 22..157 as @e[tag=save_fly.block,tag=save_fly.secondary] at @s run tp @s ~-1 ~ ~
execute if score @s rotation.y matches 112.. as @e[tag=save_fly.block,tag=save_fly.secondary] at @s run tp @s ~ ~ ~-1
execute if score @s rotation.y matches ..-112 as @e[tag=save_fly.block,tag=save_fly.secondary] at @s run tp @s ~ ~ ~-1
execute if score @s rotation.y matches -157..-22 as @e[tag=save_fly.block,tag=save_fly.secondary] at @s run tp @s ~1 ~ ~