kill @e[tag=save_fly]
tag @e remove save_fly.can_fly
tag @e remove save_fly.registered
tellraw @a "<ServerSaveFly> Good Bye!"