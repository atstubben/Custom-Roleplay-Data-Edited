#
# Description:	Trigger to set CustomModelData
# Called by:	custom_roleplay_data:second
#
# Sets a tag marker for items so they don't overwrite existing CustomModelData
# First check if either field has been set already. if not, mark. then, apply data
#
# 11 If it is marked and does has custom_model_data, it was already set
execute if data entity @s SelectedItem.components.minecraft:custom_model_data \
    if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data":{CustomRoleplayData: 1b }}}}] run \
    title @s actionbar \
        {\
            "text": "You already configured this item. -> /trigger CustomModelDataRemove", \
            "color": "red"\
        }
#
# 01 If it is not marked and does have custom_model_data, it was set by something else
execute if data entity @s SelectedItem.components.minecraft:custom_model_data \
    if entity @s[nbt=!{SelectedItem: {components: {"minecraft:custom_data":{CustomRoleplayData: 1b }}}}] run \
    title @s actionbar \
        {\
            "text": "This item was already given CustomModelData. -> /trigger CustomModelDataRemove", \
            "color": "red"\
        }
#
# 00 If it is not marked and doesn't have custom_model_data, mark it 1b
execute unless data entity @s SelectedItem.components.minecraft:custom_model_data \
    if entity @s[nbt=!{SelectedItem: {components: {"minecraft:custom_data":{CustomRoleplayData: 1b }}}}] run \
    item modify entity @s weapon.mainhand custom_roleplay_data:marker_nbt
#
# 10 If it is marked and does not have custom_model_data, set_data
execute unless data entity @s SelectedItem.components.minecraft:custom_model_data \
    if entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data":{CustomRoleplayData: 1b }}}}] run \
    function custom_roleplay_data:set_data