// bleed.sqf
_unit = (_this select 3);
_isDead = _unit getVariable["USEC_isDead",false];
_isCardiac = _unit getVariable["USEC_isCardiac",false];

sleep 1;
if (_isDead) then {
	TitleText[localize 'str_epoch_player_161',"PLAIN DOWN",3];
} else {
	if (_isCardiac) then {
		TitleText[localize 'str_epoch_player_162',"PLAIN DOWN",3];
	} else {
		TitleText[localize 'str_epoch_player_163',"PLAIN DOWN",3];
	};
};

//r_action = false;