private["_vehicle"];
_vehicle = _this select 3;

if(TradeInprogress) exitWith { cutText [localize 'str_epoch_player_28', "PLAIN DOWN"]; };
TradeInprogress = true;

{player removeAction _x} forEach s_player_lockunlock;s_player_lockunlock = [];
s_player_lockUnlock_crtl = 1;

_removed = ([player,"ItemHotwireKit",1] call BIS_fnc_invRemove);

if (_removed == 1) then {

	if((random 10) <= 7.5) then {

		dayzLockVehicle = [_vehicle,false];
		if(player distance _vehicle < 10) then {
			
			if (local _vehicle) then {
				dayzLockVehicle spawn local_lockUnlock;
			} else {
				publicVariable "dayzLockVehicle";
			};

			/*
			player moveInDriver _vehicle;

			if (local vehicle player) then {
				vehicle player engineOn true; 
			};
			*/
		};
	} else {
		cutText [localize 'str_epoch_player_29', "PLAIN DOWN"];
	};
};

s_player_lockUnlock_crtl = -1;
TradeInprogress = false;