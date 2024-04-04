execute on attacker run kill @e[tag=save_fly.block,sort=nearest,limit=1]
execute on attacker at @s run particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.2 0.2 0.25 10
execute on attacker at @s run title @s actionbar "Flumodus §4AUS"
execute on attacker at @s run tellraw @s "Flumodus §4AUS"
execute run data remove entity @s attack
execute on target run summon minecraft:shulker ~ ~-1 ~ {DeathLootTable:"",Invulnerable:true,Tags:["save_fly","save_fly.block"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:999999,show_particles:false}],OnGround:true,NoGravity:true,NoAI:true}
execute on target at @s run particle minecraft:heart ~ ~1 ~ 0.2 0.2 0.2 5 10
execute on target at @s run title @s actionbar "Flumodus §2AN"
execute on target at @s run tellraw @s "Flumodus §2AN"
execute run data remove entity @s interaction