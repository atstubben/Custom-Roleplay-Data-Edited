#
# Description:	Enables trigger
# Called by:	advancment custom_model_data:custom_model_data
#
# Trigger for setting custom_model_data
scoreboard players set @s CustomModelData -1
scoreboard players enable @s CustomModelData
#
# Trigger for removing components given by this datapack
scoreboard players set @s CustomModelDataRemove -1
scoreboard players enable @s CustomModelDataRemove