#
# Description:	Stores CustomModelData ID and sets custom_model_data
# Called by:	custom_roleplay_data:trigger
#
# Store triggered value of CustomModelData score
execute store result storage custom_roleplay_data:data CustomModelData int 1 run scoreboard players get @s CustomModelData
#
# Run macro with value from CustomModelData score
function custom_roleplay_data:set_data_macro with storage custom_roleplay_data:data
title @s actionbar \
    [\
        {\
            "text": "Set CustomModelData to ", "color": "green"\
        }, \
        {\
            "score": {\
                "name": "@s",\
                "objective": "CustomModelData"\
            },\
            "color": "aqua"\
        }\
    ]

# playsound
execute at @s run playsound minecraft:item.armor.equip_turtle player @s ~ ~ ~ 0.7 0.8