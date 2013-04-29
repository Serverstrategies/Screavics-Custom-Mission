SetCH = compile (preprocessFileLineNumbers "sub_radio\sub_radio_setch.sqf");
if (isServer) then {
	
	_index = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Channel 1", "%CHANNEL_LABEL", []];
	_index = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Channel 2", "%CHANNEL_LABEL", []];
	_index = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Channel 3", "%CHANNEL_LABEL", []];
	_index = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Channel 4", "%CHANNEL_LABEL", []];
	_index = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Channel 5", "%CHANNEL_LABEL", []];
	_index = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Channel 6", "%CHANNEL_LABEL", []];
	_index = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Channel 7", "%CHANNEL_LABEL", []];
	_index = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Channel 8", "%CHANNEL_LABEL", []];
	_index = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Channel 9", "%CHANNEL_LABEL", []];
	_index = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Channel 10", "%CHANNEL_LABEL", []];
	
	SUB_RADIO_INIT = true;
	publicvariable "SUB_RADIO_INIT";
};
waituntil {SUB_RADIO_INIT};
if (!isDedicated) then {
	waitUntil {!isNull player};
	waitUntil {player == player};
	_setCh = player addaction ["Open Radio Menu","sub_radio\sub_radio_menu2.sqf"];
	player setvariable ["SUB_RADIO_SELECT", 1];
};