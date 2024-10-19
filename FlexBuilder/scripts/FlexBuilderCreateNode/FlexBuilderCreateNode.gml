// Feather disable all

/// @param JSON

function FlexBuilderCreateNode(_json)
{
    return flexpanel_create_node(__FlexBuilderPrepareInner(variable_clone(_json)));
}

function __FlexBuilderPrepareInner(_json)
{
    if (variable_struct_exists(_json, "object"))
    {
        var _data = _json[$ "data"];
        if (not is_struct(_data))
        {
            _data = {};
            _json.data = _data;
        }
        
        _data.object = _json[$ "object"];
        variable_struct_remove(_json, "object");
    }
    
    var _nodesArray = _json[$ "nodes"];
    if (is_array(_nodesArray))
    {
        var _i = 0;
        repeat(array_length(_nodesArray))
        {
            __FlexBuilderPrepareInner(_nodesArray[_i]);
            ++_i;
        }
    }
    
    return _json;
}