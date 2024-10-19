// Feather disable all

node = FlexBuilderCreateNode({
	width:          "100%",
    height:         "100%",
    alignItems:     "center",
    justifyContent: "center",
    
    object: oTestContainer,
    
    nodes: [
        {
            "width":"70%", "height":"70%",
        }
    ],
});

FlexBuilder(node, room_width, room_height, 0, oTestPanel);