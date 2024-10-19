// Feather disable all

/// @param node
/// @param width
/// @param height
/// @param depth
/// @param defaultObject
/// @param [direction=LTR]

function FlexBuilder(_node, _width, _height, _depth, _defaultObject, _direction = flexpanel_direction.LTR)
{
    flexpanel_calculate_layout(_node, _width, _height, _direction);
    __FlexBuilderInner(_node, _depth, _defaultObject);
}

function __FlexBuilderInner(_node, _depth, _defaultObject)
{
    //Make instances in reverse because GM's draw order is weird
    
    with(flexpanel_node_layout_get_position(_node, false))
    {
        var _object = undefined;
        var _data = flexpanel_node_get_data(_node);
        if (is_struct(_data)) _object = _data[$ "object"];
        
        instance_create_depth(left + 0.5*width, top + 0.5*height, _depth, __FlexBuilderResolveObject(_object) ?? _defaultObject,
        {
            name:   flexpanel_node_get_name(_node),
            width:  width,
            height: height
        });
        
        var _i = 0;
        repeat(flexpanel_node_get_num_children(_node))
        {
            __FlexBuilderInner(flexpanel_node_get_child(_node, _i), _depth-1, _defaultObject);
            ++_i;
        }
    }
}

function __FlexBuilderResolveObject(_object)
{
    if (is_string(_object))
    {
        var _asset = handle_parse(_object);
        if (not object_exists(_asset))
        {
            _asset = asset_get_index(_object);
            if (not object_exists(_asset))
            {
                show_error("\n \nCouldn't find object called \"" + string(_object) + "\"\n ", true);
            }
        }
        
        return _asset;
    }
    else if (object_exists(_object))
    {
        return _object;
    }
    else if (_object == undefined)
    {
        return undefined;
    }
    else
    {
        show_error("\n \nCouldn't resolve object " + string(_object) + "\n ", true);
    }
}