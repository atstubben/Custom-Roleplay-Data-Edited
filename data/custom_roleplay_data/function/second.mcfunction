#
# Description:	Function that repeats every second
# Called by:	custom_roleplay_data:init
#
schedule function custom_roleplay_data:second 1s
#
# Calls function "trigger" if score: CustomModelData is greater than 0
execute as @a[scores={CustomModelData=0..}] if data entity @s SelectedItem.id run \
    function custom_roleplay_data:trigger
#
# Calls function "reset_item" if score: ClearCustomModelData is greater than 0
execute as @a[scores={CustomModelDataRemove=0..}] if data entity @s SelectedItem.id run \
    function custom_roleplay_data:reset_item

# Resets both triggers
execute as @a run function custom_roleplay_data:enable