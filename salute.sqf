_leader = leader player;		
_list = [];
_list1= [];
_list2= [];
while {alive _leader} do {
	_list 	= position _leader nearObjects["Man",8];
	_list1 	= _list;
	_list 	= _list - _list2;
		{
		if ((side _x == side _leader) && (rankId _x < rankId _leader) && (_x distance _leader < 5) ) then 
			{
			_x disableAI "MOVE";
			_x lookAt _leader;
			_leader action ["salute",_x];
			_list2 = _list2 + _list1;
			sleep 2;
			_leader action ["salute",_x];
			_x enableAI "MOVE";
			}
		} forEach _list;
	sleep 1;
}
