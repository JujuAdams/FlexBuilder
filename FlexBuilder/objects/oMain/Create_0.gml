// Feather disable all

//////// Create layout
//// Root (main canvas)
//// This is defined as 100% of its container’s size, which is defined later in flexpanel_calculate_layout()
//n_root = flexpanel_create_node({name: "root"});
//flexpanel_node_style_set_width(n_root, 100, flexpanel_unit.percent);
//flexpanel_node_style_set_height(n_root, 100, flexpanel_unit.percent);
//flexpanel_node_style_set_justify_content(n_root, flexpanel_justify.center);
//flexpanel_node_style_set_align_items(n_root, flexpanel_align.center);
//
//// All the _set* functions can be replaced by struct properties, this is only for demonstration of the _set* functions
//// Weapon and health gauge
//var _n_weap = flexpanel_create_node({width:"30%", height:"20%", name: "weap"});
//flexpanel_node_style_set_position_type(_n_weap, flexpanel_position_type.absolute);
//flexpanel_node_style_set_position(_n_weap, flexpanel_edge.left, 10, flexpanel_unit.point);
//flexpanel_node_style_set_position(_n_weap, flexpanel_edge.bottom, 10, flexpanel_unit.point);
//flexpanel_node_style_set_padding(_n_weap, flexpanel_edge.all_edges, 5);
//flexpanel_node_style_set_flex_direction(_n_weap, flexpanel_flex_direction.row);
//flexpanel_node_style_set_gap(_n_weap, flexpanel_gutter.all_gutters, 5);
//flexpanel_node_insert_child(n_root, _n_weap, 0);
//
//var _n_weap1 = flexpanel_create_node({flexDirection: "column", justifyContent: "flex-end", 5: 5, name:"weap1"});
//flexpanel_node_style_set_aspect_ratio(_n_weap1, 1);
//flexpanel_node_insert_child(_n_weap, _n_weap1, 0);
//
//flexpanel_node_insert_child(_n_weap1, flexpanel_create_node({height: "20%", name: "weap_info1"}), 0);
//flexpanel_node_insert_child(_n_weap1, flexpanel_create_node({height: "20%", name: "weap_info2"}), 1);
//
//var _n_weap2 = flexpanel_create_node({name: "weap2", flexDirection: "column", justifyContent: "flex-end", 5: 5});
//flexpanel_node_style_set_width(_n_weap2, 0, flexpanel_unit.auto);
//flexpanel_node_style_set_flex_grow(_n_weap2, 1);
//flexpanel_node_insert_child(_n_weap, _n_weap2, 1);
//
//flexpanel_node_insert_child(_n_weap2, flexpanel_create_node({height: "20%", name: "weap_bar_magic"}), 0);
//flexpanel_node_insert_child(_n_weap2, flexpanel_create_node({height: "20%", name: "weap_bar_stamina"}), 1);
//flexpanel_node_insert_child(_n_weap2, flexpanel_create_node({height: "20%", name: "weap_bar_health"}), 2);
//
//// Inventory
//var _n_inv = flexpanel_create_node(
//{
//    name: "inv", width: "40%", height: "10%",
//    right: 10, bottom: 10, position: "absolute",
//    flexDirection: "row", 5: 5, 5: 5
//});
//flexpanel_node_insert_child(n_root, _n_inv, 1);
//
//for (var i = 0; i < 6; i++)
//{
//    flexpanel_node_insert_child(_n_inv, flexpanel_create_node({name: $"inv_slot", data:{num: i}, aspectRatio: 1}), i);
//}
//
//// Score display
//var _n_score = flexpanel_create_node({name: "score", width: "40%", height: "10%", top: 10, position: "absolute", flexDirection: "row", justifyContent: "space-between"});
//flexpanel_node_insert_child(n_root, _n_score, 2);
//
//flexpanel_node_insert_child(_n_score, flexpanel_create_node({name: "score1", aspectRatio: 1}), 0);
//flexpanel_node_insert_child(_n_score, flexpanel_create_node({name: "score2", aspectRatio: 1}), 1);
//
//// Player list
//var _n_play = flexpanel_create_node(
//{
//    name: "play", width: "40%", height: "50%",
//    5: 5, 5: 5, flexDirection: "column"
//});
//flexpanel_node_insert_child(n_root, _n_play, 3);
//
//for (var i = 0; i < 8; i++)
//{
//    var _n = flexpanel_create_node({name: $"play{1+i}", height: 30, flexDirection: "row", 5: 5, justifyContent: "space_between"});
//    flexpanel_node_insert_child(_n, flexpanel_create_node({name: $"play_icon", data:{num: i}, aspectRatio: 1}), 0);
//    flexpanel_node_insert_child(_n, flexpanel_create_node({name: $"play_name", data:{num: i}, flexGrow: 1}), 0);
//    flexpanel_node_insert_child(_n, flexpanel_create_node({name: $"play_ping", data:{num: i}, width: 30}), 0);
//    flexpanel_node_insert_child(_n_play, _n, i);
//}

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