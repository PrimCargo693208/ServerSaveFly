execute as @a[tag=save_fly.can_fly, tag=!save_fly.registered] at @s run summon minecraft:shulker ~ ~-1 ~ {DeathLootTable:"",Invulnerable:true,Tags:["save_fly","save_fly.block"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:999999,show_particles:false}],OnGround:true,NoGravity:true,NoAI:true}
execute as @a[tag=save_fly.can_fly, tag=!save_fly.registered] at @s run tag @s add save_fly.registered

execute as @a[tag=!save_fly.can_fly, tag=save_fly.registered] at @s run kill @e[tag=save_fly.block,sort=nearest,limit=1]
execute as @a[tag=!save_fly.can_fly, tag=save_fly.registered] at @s run tag @s remove save_fly.registered



execute as @a[tag=save_fly.registered, scores={sneak_time=1}] at @s unless entity @e[tag=save_fly.interact,distance=..2] run summon minecraft:interaction ~ ~1 ~ {Tags:["save_fly.interact","save_fly"],response:true}
execute as @a[tag=save_fly.registered, scores={sneak_time=0}] at @s if entity @e[tag=save_fly.interact,distance=..2] run kill @e[tag=save_fly.interact,sort=nearest,limit=1]