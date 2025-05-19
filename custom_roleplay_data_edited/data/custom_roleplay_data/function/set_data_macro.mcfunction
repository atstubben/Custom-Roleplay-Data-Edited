#
# Description:	Sets the data for item in-hand
# Called by:	custom_roleplay_data:set_data
#
$item modify entity @s weapon.mainhand {"function":"minecraft:set_custom_model_data","strings":{"values":["$(CustomModelData)"],"mode":"append"}}