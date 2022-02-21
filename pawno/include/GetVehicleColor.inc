/*
	@Release:	GetVehicleColor
	@Release Type:	Include
	@Author:	RyDeR`
	@Last Update:	04/01/2011 - 19:36
	@Version:	1.2
*/

#if !defined SetSharingData
	#define SetSharingData(%0,%1) \
	    setproperty(0, "", (%0), (%1))
#endif

#if !defined GetSharingData
	#define GetSharingData(%0,%1) \
	    getproperty(0, "", (%0), (%1))
#endif

native _AddStaticVehicle(modelid, Float: spawn_x, Float: spawn_y, Float: spawn_z, Float: z_angle, color1, color2) 

= AddStaticVehicle;
native _AddStaticVehicleEx(modelid, Float: spawn_x, Float: spawn_y, Float: spawn_z, Float: z_angle, color1, 

color2, respawn_delay) = AddStaticVehicleEx;
native _CreateVehicle(vehicletype, Float: x, Float: y, Float: z, Float: rotation, color1, color2, respawn_delay, addsiren=0) =

CreateVehicle;
native _DestroyVehicle(vehicleid) = DestroyVehicle;
native _ChangeVehicleColor(vehicleid, color1, color2) = ChangeVehicleColor;

#define AddStaticVehicle \
	__AddStaticVehicle

#define AddStaticVehicleEx \
	__AddStaticVehicleEx

#define CreateVehicle \
	__CreateVehicle

#define DestroyVehicle \
	__DestroyVehicle

#define ChangeVehicleColor \
	__ChangeVehicleColor

stock __AddStaticVehicle(modelid, Float: spawn_x, Float: spawn_y, Float: spawn_z, Float: z_angle, color1, color2)
{
	new
		vehicleID,
		string[24]
	;
	vehicleID = _AddStaticVehicle(modelid, Float: spawn_x, Float: spawn_y, Float: spawn_z, Float: z_angle, 

color1, color2);

	format(string, sizeof(string), "%d-%d", color1, color2);
	SetSharingData(vehicleID, string);
	
	return vehicleID;
}

stock __AddStaticVehicleEx(modelid, Float: spawn_x, Float: spawn_y, Float: spawn_z, Float: z_angle, color1, 

color2, respawn_delay)
{
	new
		vehicleID,
		string[24]
	;
	vehicleID = _AddStaticVehicleEx(modelid, Float: spawn_x, Float: spawn_y, Float: spawn_z, Float: z_angle, 

color1, color2, respawn_delay);

	format(string, sizeof(string), "%d-%d", color1, color2);
	SetSharingData(vehicleID, string);

	return vehicleID;
}

stock __CreateVehicle(vehicletype, Float: x, Float: y, Float: z, Float: rotation, color1, color2, respawn_delay, addsiren=0)
{
	new
		vehicleID,
		string[24]
	;
	vehicleID = _CreateVehicle(vehicletype, Float: x, Float: y, Float: z, Float: rotation, color1, color2, 

respawn_delay,addsiren);

	format(string, sizeof(string), "%d-%d", color1, color2);
	SetSharingData(vehicleID, string);

	return vehicleID;
}

stock __DestroyVehicle(vehicleid)
{
	SetSharingData(vehicleid, "0-0");
	return _DestroyVehicle(vehicleid);
}

stock __ChangeVehicleColor(vehicleid, color1, color2)
{
	new
		string[24]
	;
	format(string, sizeof(string), "%d-%d", color1, color2);
	SetSharingData(vehicleid, string);
	
	return _ChangeVehicleColor(vehicleid, color1, color2);
}

stock __OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	#pragma unused \
	    playerid

	new
		string[24]
	;
	format(string, sizeof(string), "%d-%d", color1, color2);
	SetSharingData(vehicleid, string);
	return 1;
}

stock GetVehicleColor(vehicleid, &color1, &color2)
{
	new
	    stringData[24],
	    stringColor[2][12],
	    i
	;
	GetSharingData(vehicleid, stringData);
	
	if((i = strfind(stringData, "-", true)) != -1)
	{
		strmid(stringColor[0], stringData, 0, i);
		strmid(stringColor[1], stringData, (i + 1), strlen(stringData));

		color1 = strval(stringColor[0]);
		color2 = strval(stringColor[1]);
		return 1;
	}
	return 0;
}
