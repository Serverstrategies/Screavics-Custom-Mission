
private ["_Leaderunits","_units","_vehicles","_tanks","_faction","_temparray","_spawnname","_debug","_helo","_plane","_boat"];
if (!isServer) exitWith {};
_faction = _this select 0;
_spawnname = _this select 1;
_temparray = [];
_debug = SLP_ARRAY select 0;


/*/////////////////////////////////////////////////////////////////////////////////////
When you set up the arrays the pilot class is first, then the crew type classes are second
Example:
_units = [ pilot, crew , units....]

*//////////////////////////////////////////////////////////////////////////////////////
//=============================================================================================================================================
switch (_faction) do 
	{    
case 0: //opfor
	{
		_Leaderunits = 	["O_soldier_SL_F","O_soldier_TL_F"];
		_units =	   	[
						"O_helipilot_F","O_soldier_F","O_soldier_GL_F","O_soldier_AR_F","O_soldier_LAT_F","O_soldier_TL_F","O_soldier_F","O_soldier_F","O_medic_F",
						"O_soldier_repair_F","O_soldier_M_F","O_soldier_exp_F"
						];
		_vehicles = 	["O_Ifrit_GMG_F","O_Ifrit_MG_F","O_Ifrit_F","O_Quadbike_F"];
		_tanks = 		[];
		_helo = 		["O_Ka60_F"];//,"O_Ka60_Unarmed_F"
		_plane =     	[];
		_boat = 		["O_SpeedBoat"];//,"O_Lifeboat","O_Assaultboat",
	};
case 1: //bluefor
	{
		_Leaderunits = 	["B_Soldier_TL_F","B_Soldier_SL_F" ];
		_units =		[
						"B_Helipilot_F" ,"B_Soldier_F","B_Soldier_F","B_soldier_AR_F","B_soldier_exp_F","B_Soldier_GL_F","B_soldier_M_F","B_soldier_repair_F","B_soldier_LAT_F",
						"B_Soldier_lite_F"
						];
		_vehicles = 	["B_Hunter_HMG_F","B_Hunter_F","B_Hunter_RCWS_F","B_Quadbike_F"];
		_tanks = 		[];
		_helo = 		["B_AH9_F"];//"B_MH9_F"
		_plane =     	[];
		_boat = 		["B_SpeedBoat"];//"B_Lifeboat","B_Assaultboat",		
		};
case 2: //Civilian	
	{
		_Leaderunits = 	["C_man_1","C_man_1_1_F","C_man_polo_1_F"];
		_units =		["C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F"];
		_vehicles = 	["C_offroad"];
		_tanks = 		[];
		_helo = 		[];
		_plane =		[];
		_boat = 		["C_Rubberboat"];		
	};		 

/*case #: //Takistan army	
	{
		_Leaderunits = 	[""];
		_units =		["pilot class","Crew class","units"];
		_vehicles = 	[];
		_tanks = 		[];
		_helo = 		[];
		_plane =		[];
	};		 
*/
Default
	{
		if(_debug == 1) then
		{
			hintc format [ "Error Spawnname %1: SLP_units_config ... Not a valid config number/n/nSpawn call aborted",_spawnname];
		};
	};
};


_temparray = _temparray + [_Leaderunits,_units ,_vehicles,_tanks,_helo,_plane,_boat];

_temparray
    
