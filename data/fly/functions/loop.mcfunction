
execute as @a[tag=save_fly.can_fly, tag=!save_fly.registered] at @s run summon minecraft:shulker ~ ~-1 ~ {DeathLootTable:"",Invulnerable:true,Tags:["save_fly","save_fly.block"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:999999,show_particles:false}],OnGround:true,NoGravity:true,NoAI:true}
execute as @a[tag=save_fly.can_fly, tag=!save_fly.registered] at @s run tag @s add save_fly.registered

execute as @a[tag=!save_fly.can_fly, tag=save_fly.registered] at @s run kill @e[tag=save_fly.block,sort=nearest,limit=1]
execute as @a[tag=!save_fly.can_fly, tag=save_fly.registered] at @s run tag @s remove save_fly.registered


execute as @a[tag=save_fly.registered, scores={sneak_time=1}] at @s unless entity @e[tag=save_fly.interact,distance=..2] run summon minecraft:interaction ~ ~1 ~ {Tags:["save_fly.interact","save_fly"],response:true}
execute as @a[tag=save_fly.registered, scores={sneak_time=0}] at @s if entity @e[tag=save_fly.interact,distance=..2] run kill @e[tag=save_fly.interact,sort=nearest,limit=1]

execute as @a[tag=save_fly.registered] at @s run function fly:sneak-detection
execute as @a[tag=save_fly.registered] at @s run tp @e[tag=save_fly.block] ~ ~-1 ~
execute as @a[tag=save_fly.registered] at @s run tp @e[tag=save_fly.interact] ~ ~1 ~
execute as @a[tag=save_fly.registered] at @s if block ~ ~-1 ~ air if entity @e[tag=save_fly.block,distance=..5] run effect give @s resistance 5 127 true

execute as @e[tag=save_fly.interact] on attacker run kill @e[tag=save_fly.block,sort=nearest,limit=1]
execute as @e[tag=save_fly.interact] on attacker at @s run particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.2 0.2 0.25 10
execute as @e[tag=save_fly.interact] on attacker at @s run title @s actionbar "Flumodus §4AUS"
execute as @e[tag=save_fly.interact] on attacker at @s run tellraw @s "Flumodus §4AUS"
execute as @e[tag=save_fly.interact] run data remove entity @s attack
execute as @e[tag=save_fly.interact] on target run summon minecraft:shulker ~ ~-1 ~ {DeathLootTable:"",Invulnerable:true,Tags:["save_fly","save_fly.block"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:999999,show_particles:false}],OnGround:true,NoGravity:true,NoAI:true}
execute as @e[tag=save_fly.interact] on target at @s run particle minecraft:heart ~ ~1 ~ 0.2 0.2 0.2 5 10
execute as @e[tag=save_fly.interact] on target at @s run title @s actionbar "Flumodus §2AN"
execute as @e[tag=save_fly.interact] on target at @s run tellraw @s "Flumodus §2AN"
execute as @e[tag=save_fly.interact] run data remove entity @s interaction