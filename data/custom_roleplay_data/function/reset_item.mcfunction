#
# Description:	Trigger to remove CustomModelData and marker
# Called by:	custom_roleplay_data:second
#
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"!minecraft:custom_model_data":{}}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"!minecraft:custom_data":{}}}