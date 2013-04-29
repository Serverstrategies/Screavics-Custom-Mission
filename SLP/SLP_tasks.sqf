
private ["_grp","_string","_debug","_tsk1","_tsk2","_tsk","_tskname","_pos","_spname","_tsk2p","_CBA_present","_tskp"];
if (!isServer) exitwith {}; 

_spname = _this select 0;
_pos = _this select 1;
_grp = _this select 2;
_tsk = _this select 3;
_string = _this select 4;
_CBA_present = SLP_ARRAY select 14;
_debug = SLP_ARRAY select 0;

if (typename (_tsk select 0) == "STRING" && count _tsk >= 2 ) then {

_tskname  =  _tsk select 0;  //1.name of the task .."patrol","defend" etc
_tsk1 = if (typeName (_tsk select 1) == "ARRAY") then {(_tsk select 1) call BIS_fnc_selectRandom} else {_tsk select 1};  //2. depends on task, maybe a position or a distance
_tsk2 = if (count _tsk >= 3) then {_tsk select 2} else {_pos select 0};//3. an alternate position to preform task,other than spawn position. NOT all scripts will allow this.
 	if (typeName _tsk2 == "ARRAY") then {
		_tsk2 = _tsk2 call BIS_fnc_selectRandom;
	}; 

_tskname= toUpper (_tskname);

	switch (_tskname) do 
	{
//----------------------------------------------------------------------------------------------------------------------------------
// Can add or change Tasks here      
		if (_CBA_present) then {
	    	case "PATROL":	{[_grp, _tsk2, _tsk1, 7, "MOVE", "SAFE", "YELLOW", "NORMAL", "STAG COLUMN", "_grp spawn CBA_fnc_searchNearby", [5+(random 5),10+(random 5),15+(random 5)]] call CBA_fnc_taskPatrol;};    			
	    	case "DEFEND":	{[_grp, _tsk2,_tsk1, 2,true] call CBA_fnc_taskdefend;};
			case "ATTACK":	{[_grp,_tsk1,50,"SAD", "Aware", "RED","Normal","LINE", "_grp spawn CBA_fnc_searchNearby"] call CBA_fnc_addWaypoint;}; 			                           
			case "HUNT":  	{[_grp,_tsk1] spawn SLP_hunt;}; 					 
	    	case "BUILDING":{_tskp=_tsk2 call SLP_fnc_getpos;sleep .1;[_tskp, units _grp,_tsk1,0,[],false,true] call shk_buildpos;};  
			case "CRBHOUSE":{{[_x, _tsk1, true] execVM "scripts\crB_HousePos.sqf"} foreach units _grp;};    					
			case "BPATROL":	{_tsk2p = _tsk2 call SLP_fnc_getpos;[_grp, _tsk2p,_tsk1] call BIS_fnc_taskPatrol};		
			case "UPS" : {[leader _grp,_tsk1,"nowait"] execVM "scripts\ups.sqf"};
			case "UPSUP" : {[leader _grp,_tsk1,"nowait","randomup"] execVM "scripts\ups.sqf"};
	//  	case "":{}; ///add new task here                                                                                                       
		} else {
			case "PATROL":	{_tsk2p = _tsk2 call SLP_fnc_getpos;[_grp, _tsk2p,_tsk1] call BIS_fnc_taskPatrol};		
			case "DEFEND":	{
								_tskp= if (typename _tsk1 == "NUMBER") then {_tsk2 call SLP_fnc_getpos} else {_tsk1 call SLP_fnc_getpos};
								[_grp, _tskp] call BIS_fnc_taskdefend;
							}; 
			case "ATTACK":	{[_grp, _tsk1] call SLP_attack};	
			case "HUNT":  	{[_grp,_tsk1] spawn SLP_hunt}; 
	   		case "BUILDING": {_tskp = _tsk2 call SLP_fnc_getpos;[_tskp, units _grp,_tsk1,0,[],false,true] call shk_buildpos};
			case "CRBHOUSE":{{[_x, _tsk1, true] execVM "scripts\crB_HousePos.sqf"} foreach units _grp};    						
			case "UPS" : {[leader _grp,_tsk1,"nowait"] execVM "scripts\ups.sqf"};
			case "UPSUP" : {[leader _grp,_tsk1,"nowait","randomup"] execVM "scripts\ups.sqf"};
	//   	case "": {};  ///add new task here            
//----------------------------------------------------------------------------------------------------------------------------------
		};
			default 
			{
				if(_debug == 1) then{
					hintc format [ "Error: spawnname %1\n\n the task you are trying to do is incorrect, check your spelling", _spname];
	            };
			};
	}; 
} else {
	if(_debug == 1) then{
    	hintc format ["Error Spawnname %1:\n\nnot enough elements provided for SLP_Tasks\ncheck your script call",_spname];
	};
};


if (typename _string == "STRING") then {
    (Vehicle leader _grp) setVehicleInit _string; 
    sleep .1;
	processInitCommands;
}; 


sleep 1;
if (SLP_Array select 0 == 1) then {
	[_grp,_tskname] spawn SLP_markers;
};
                   
                   