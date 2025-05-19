#
# Description:	Sets up datapack
# Called by:	#minecraft:load
# Entity @s:	none
#
# adds trigger scoreboard for adding custom_model_data
scoreboard objectives add CustomModelData trigger
scoreboard players set @a CustomModelData -1
scoreboard players enable @a CustomModelData
#
# adds trigger scoreboard for removing components given by this datapack
scoreboard objectives add CustomModelDataRemove trigger
scoreboard players set @a CustomModelDataRemove -1
scoreboard players enable @a CustomModelDataRemove
#
# initializes second function
function custom_roleplay_data:second
