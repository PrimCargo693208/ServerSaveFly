
execute as @a[scores={sneak_time=1..}] if block ~ ~-0.05 ~ air run tp @s ~ ~-0.1 ~
execute as @a[scores={sneak_time=1..}] run scoreboard players set @s sneak_time 0