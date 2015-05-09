/****************************************************************

Author(s):
	Karel Moricky
	Nelson
	oscarmolinadev

File:
	fnc_cameraMove.sqf

Description:
	Camera move - Nelson's solution for key lag

Performance:
	0 ms

Parameter(s):


Returns:
	Nothing

****************************************************************/


#include "script_component.hpp"

/****************************************************************

Author(s):
	Karel Moricky - Bohemia Interactive
	Nelson - Bohemia Interactive
	oscarmolinadev

File:
	fnc_cameraMove.sqf

Description:
	Camera move - Nelson's solution for key lag

Performance:
	0 ms

Parameter(s):


Returns:
	Nothing

****************************************************************/

#include "script_component.hpp"

private [
	"_type","_unit",
	"_cam", "_newCamPosition","_vector", "_objectLocation","_angle"
];

disableSerialization;

if (isNull (findDisplay D_TOOLS)) exitWith {};

_cam = missionnamespace getvariable ["UPM_Tools_Camera",objNull];

if (!isNull _cam) then {
	camDestroy _cam;
};


switch (_type) do {
    case "FREECAM": {
    	/* STATEMENT */
    };
};

_unit = player;

_cam = "camera" camcreate getPos _unit;
_cam camSetFocus [50, 0];
_cam camCommit 0;

showcinemaborder false;
missionnamespace setvariable ["UPM_Tools_Camera",_cam];

_newCamPosition = _unit modelToWorld [0,-3.5,2.5];

_cam setPos _newCamPosition;

_vector = ((((getPos vehicle _unit select 0) - (getPos _cam select 0)) atan2 ((getPos vehicle _unit select 1) - (getPos _cam select 1))) + 360) % 360;
_cam setDir _vector;

_objectLocation = (getPosASL _cam) vectorDiff (getPosASL _unit);

_angle = 90 - (atan (sqrt((((_objectLocation select 0)^2)+((_objectLocation select 1)^2)) / (_objectLocation select 2))));

[+0,-_angle] call upm_fnc_cameraRotate;

vehicle _unit switchCamera "Internal";
_cam cameraeffect ["INTERNAL","BACK"];
cameraEffectEnableHUD true;