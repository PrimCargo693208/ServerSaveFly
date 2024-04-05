tp @e[tag=save_fly.block,tag=!save_fly.secondary] ~ ~-1.5 ~
tp @e[tag=save_fly.interact] ~ ~.75 ~
execute if entity @e[tag=save_fly.block,distance=..2] run effect give @s speed 1 1 true
execute if block ~ ~-1 ~ air if entity @e[tag=save_fly.block,distance=..5] run effect give @s resistance 5 127 true
