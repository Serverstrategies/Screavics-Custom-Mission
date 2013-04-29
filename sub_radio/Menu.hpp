class Menu
{
	name=Menu;
	idd=-1;
	movingEnable=1;
	controlsBackground[]={sub_radio_Menu};
	objects[]={};
	controls[]={btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9, btn10, sub_radio_FrameMenu};
	
	class btn10:RscButton
	{
		idc=-1;
		text="CH 10";
		action="[10] spawn SetCH; CloseDialog 0";
		x = 0.5625 * safezoneW + safezoneX;
		y = 0.625 * safezoneH + safezoneY;
		w = 0.0216521 * safezoneW;
		h = 0.0460547 * safezoneH;
	};
	
	class btn9:RscButton
	{
		idc=-1;
		text="CH 9";
		action="[9] spawn SetCH; CloseDialog 0";
		x = 0.59375 * safezoneW + safezoneX;
		y = 0.55 * safezoneH + safezoneY;
		w = 0.0216521 * safezoneW;
		h = 0.0460547 * safezoneH;
	};
	
	class btn8:RscButton
	{
		idc=-1;
		text="CH 8";
		action="[8] spawn SetCH; CloseDialog 0";
		x = 0.5625 * safezoneW + safezoneX;
		y = 0.55 * safezoneH + safezoneY;
		w = 0.0216521 * safezoneW;
		h = 0.0460547 * safezoneH;
	};
	
	class btn7:RscButton
	{
		idc=-1;
		text="CH 7";
		action="[7] spawn SetCH; CloseDialog 0";
		x = 0.53125 * safezoneW + safezoneX;
		y = 0.55 * safezoneH + safezoneY;
		w = 0.0216521 * safezoneW;
		h = 0.0460547 * safezoneH;
	};
	
	class btn6:RscButton
	{
		idc=-1;
		text="CH 6";
		action="[6] spawn SetCH; CloseDialog 0";
		x = 0.59375 * safezoneW + safezoneX;
		y = 0.475 * safezoneH + safezoneY;
		w = 0.0216521 * safezoneW;
		h = 0.0460547 * safezoneH;
	};
	
	class btn5:RscButton
	{
		idc=-1;
		text="CH 5";
		action="[5] spawn SetCH; CloseDialog 0";
		x = 0.5625 * safezoneW + safezoneX;
		y = 0.475 * safezoneH + safezoneY;
		w = 0.0216521 * safezoneW;
		h = 0.0460547 * safezoneH;

	};
	
	class btn4:RscButton
	{
		idc=-1;
		text="CH 4";
		action="[4] spawn SetCH; CloseDialog 0";
		x = 0.53125 * safezoneW + safezoneX;
		y = 0.475 * safezoneH + safezoneY;
		w = 0.0216521 * safezoneW;
		h = 0.0460547 * safezoneH;
	};
	
	class btn3:RscButton
	{
		idc=-1;
		text="CH 3";
		action="[3] spawn SetCH; CloseDialog 0";
		x = 0.59375 * safezoneW + safezoneX;
		y = 0.4 * safezoneH + safezoneY;
		w = 0.0216521 * safezoneW;
		h = 0.0460547 * safezoneH;
	};
	
	class btn2:RscButton
	{
		idc=-1;
		text="CH 2";
		action="[2] spawn SetCH; CloseDialog 0";
		x = 0.5625 * safezoneW + safezoneX;
		y = 0.4 * safezoneH + safezoneY;
		w = 0.0216521 * safezoneW;
		h = 0.0460547 * safezoneH;
	};

	class btn1:RscButton
	{
		idc=-1;
		text="CH 1";
		action="[1] spawn SetCH; closeDialog 0";
		x = 0.53125 * safezoneW + safezoneX;
		y = 0.4 * safezoneH + safezoneY;
		w = 0.0216521 * safezoneW;
		h = 0.0460547 * safezoneH;
	};

	class sub_radio_FrameMenu:RscBgFrame
	{
		idc=-1;
		x = 0.515102 * safezoneW + safezoneX;
		y = 0.369301 * safezoneH + safezoneY;
		w = 0.116697 * safezoneW;
		h = 0.324051 * safezoneH;
	};

	class sub_radio_Menu:RscBackground
	{
		idc = -1;
		x = 0.515102 * safezoneW + safezoneX;
		y = 0.369301 * safezoneH + safezoneY;
		w = 0.116697 * safezoneW;
		h = 0.324051 * safezoneH;
	};
};