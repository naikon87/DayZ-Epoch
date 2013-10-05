private["_target", "_caller", "_action", "_callerID", "_targetID", "_friendlies", "_rfriendlies"];
_target = _this select 0;
_caller = _this select 1;
_action = _this select 2;

_caller removeAction _action;

_callerID = _caller getVariable "CharacterID";
_targetID = _target getVariable "CharacterID";

_friendlies = _caller getVariable ["friendlies", []];
_friendlies set [count _friendlies, _targetID];
_caller setVariable ["friendlies", _friendlies, true];

_rfriendlies = _target getVariable ["friendlies", []];

if (!(_callerID in _rfriendlies)) then {
	// caller
	titleText [format[localize 'str_epoch_player_165',(name _target)], "PLAIN DOWN"];
	// target
	DZEPV_FriendRQ = [player];
	(owner _target) publicVariableClient "DZEPV_FriendRQ";
};