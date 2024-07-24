//picking up items
function item_add(_item)
	{
		
	var _added = false;
	
	if ds_list_size(global.inven) < obj_item_manager.inv_max
		{
		ds_list_add(global.inven, _item );
		_added = true;
		}
	
	return _added;
	
	}