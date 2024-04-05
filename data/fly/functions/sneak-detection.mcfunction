
execute as @a[scores={sneak_time=1..}] if block ~ ~-1 ~ air if entity @e[tag=save_fly.block,distance=..1] run tp @s ~ ~-0.1 ~
execute as @a[scores={sneak_time=1..}] run scoreboard players set @s sneak_time 0