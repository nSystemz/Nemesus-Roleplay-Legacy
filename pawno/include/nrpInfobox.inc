/*
	native ResetInfoBoxes(playerid);
	native AddInfoBox(playerid, text[], unshowtime);
*/

#define MAX_PLAYERBOXES 4

enum PlayerBoxInfoEnum
{
	PlayerText:piPlayerBoxTD[MAX_PLAYERBOXES],
	piPlayerBoxTimerID,
	piPlayerBoxVaild[MAX_PLAYERBOXES],
	Float:piPlayerBoxPos[MAX_PLAYERBOXES],
	piPlayerLastRang
};
new PlayerBoxInfo[MAX_PLAYERS][PlayerBoxInfoEnum];

forward DeleteInfoBox(playerid);
public DeleteInfoBox(playerid)
{
	if(GetPVarInt(playerid, "InfoBoxLock") == 1) return 1;
	for(new i; i < MAX_PLAYERBOXES; i++)
	{
		if(PlayerBoxInfo[playerid][piPlayerBoxVaild][i] == 1 && PlayerBoxInfo[playerid][piPlayerBoxTD][i] != PlayerText:INVALID_TEXT_DRAW)
		{
		    PlayerTextDrawHide(playerid, PlayerBoxInfo[playerid][piPlayerBoxTD][i]);
			PlayerTextDrawDestroy(playerid, PlayerBoxInfo[playerid][piPlayerBoxTD][i]);
			PlayerBoxInfo[playerid][piPlayerBoxTD][i] = PlayerText:INVALID_TEXT_DRAW;
  			PlayerBoxInfo[playerid][piPlayerBoxVaild][i] = 0;
		}
	}
	KillTimer(PlayerBoxInfo[playerid][piPlayerBoxTimerID]);
	PlayerBoxInfo[playerid][piPlayerBoxTimerID] = -1;
	PlayerBoxInfo[playerid][piPlayerLastRang] = 0;
	return 1;
}

stock AddInfoBox(playerid, text[], unshowtime)
{
	if(IsPlayerNPC(playerid) || !IsPlayerConnected(playerid)) return 1;
	if(strlen(text) == 0) return 1;
	if(GetPVarInt(playerid, "InfoBoxLock") == 1) return 1;
	if(GetPVarInt(playerid, "moebel_active") > 0) return 1;
	if(PlayerBoxInfo[playerid][piPlayerBoxVaild][0] == 1 && PlayerBoxInfo[playerid][piPlayerBoxVaild][1] == 1 && PlayerBoxInfo[playerid][piPlayerBoxVaild][2] == 1 && PlayerBoxInfo[playerid][piPlayerBoxVaild][3] == 1)
	{
		return 1;
	}
	if(GetPVarInt(playerid, "RadioText") == 1)
  	{
   		UnShowRadioText(playerid);
   	}
	new string[1024],zeilen;
	format(string, sizeof(string), text);
	zeilen = strlen(string) / 33;
    if(zeilen == 0) zeilen = 1;
	zeilen += CountInString(string, "~n~");
	new Float:Y;
	for(new i; i < zeilen; i++)
	{
        Y += 12.0;
	}
	KillTimer(PlayerBoxInfo[playerid][piPlayerBoxTimerID]);
	PlayerBoxInfo[playerid][piPlayerBoxTimerID] = SetTimerEx("DeleteInfoBox", unshowtime, false, "i", playerid);
	new zahl = PlayerBoxInfo[playerid][piPlayerLastRang];
	if(TextdrawE == true)
	{
		ConvertEncoding(string);
	}
	if(PlayerBoxInfo[playerid][piPlayerBoxTD][zahl] != PlayerText:INVALID_TEXT_DRAW) return 1;
	switch(zahl)
	{
	 	case 0:
		{
			Y = 281.0 - Y;
			PlayerBoxInfo[playerid][piPlayerBoxTD][0] = CreatePlayerTextDraw(playerid,23.000000, Y, string);
			PlayerTextDrawBackgroundColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], 255);
			PlayerTextDrawFont(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], 1);
			PlayerTextDrawLetterSize(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], 0.200000, 1.200000);
			PlayerTextDrawColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], -1);
			PlayerTextDrawSetOutline(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], 0);
			PlayerTextDrawSetProportional(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], 1);
			PlayerTextDrawSetShadow(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], 1);
			PlayerTextDrawUseBox(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], 1);
			PlayerTextDrawBoxColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], 130);
			PlayerTextDrawTextSize(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], 150.000000, -20.000000);
			PlayerTextDrawSetSelectable(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][0], 0);
			PlayerTextDrawShow(playerid, PlayerBoxInfo[playerid][piPlayerBoxTD][0]);
			PlayerBoxInfo[playerid][piPlayerBoxVaild][0] = 1;
			PlayerBoxInfo[playerid][piPlayerBoxPos][0] = Y;
			PlayerBoxInfo[playerid][piPlayerLastRang] = 1;
		}
		case 1:
		{
		 	Y = PlayerBoxInfo[playerid][piPlayerBoxPos][0] - 6.0 - Y;
			PlayerBoxInfo[playerid][piPlayerBoxTD][1] = CreatePlayerTextDraw(playerid,23.000000, Y, string);
			PlayerTextDrawBackgroundColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], 255);
			PlayerTextDrawFont(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], 1);
			PlayerTextDrawLetterSize(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], 0.200000, 1.200000);
			PlayerTextDrawColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], -1);
			PlayerTextDrawSetOutline(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], 0);
			PlayerTextDrawSetProportional(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], 1);
			PlayerTextDrawSetShadow(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], 1);
			PlayerTextDrawUseBox(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], 1);
			PlayerTextDrawBoxColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], 130);
			PlayerTextDrawTextSize(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], 150.000000, -20.000000);
			PlayerTextDrawSetSelectable(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][1], 0);

			PlayerTextDrawShow(playerid, PlayerBoxInfo[playerid][piPlayerBoxTD][1]);

			PlayerBoxInfo[playerid][piPlayerBoxVaild][1] = 1;
			PlayerBoxInfo[playerid][piPlayerBoxPos][1] = Y;
			PlayerBoxInfo[playerid][piPlayerLastRang]++;
		}
		case 2:
		{
			Y = PlayerBoxInfo[playerid][piPlayerBoxPos][1] - 6.0 - Y;
			PlayerBoxInfo[playerid][piPlayerBoxTD][2] = CreatePlayerTextDraw(playerid,23.000000, Y, string);
			PlayerTextDrawBackgroundColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], 255);
			PlayerTextDrawFont(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], 1);
			PlayerTextDrawLetterSize(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], 0.200000, 1.200000);
			PlayerTextDrawColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], -1);
			PlayerTextDrawSetOutline(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], 0);
			PlayerTextDrawSetProportional(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], 1);
			PlayerTextDrawSetShadow(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], 1);
			PlayerTextDrawUseBox(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], 1);
			PlayerTextDrawBoxColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], 130);
			PlayerTextDrawTextSize(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], 150.000000, -20.000000);
			PlayerTextDrawSetSelectable(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][2], 0);
			PlayerTextDrawShow(playerid, PlayerBoxInfo[playerid][piPlayerBoxTD][2]);

			PlayerBoxInfo[playerid][piPlayerBoxVaild][2] = 1;
			PlayerBoxInfo[playerid][piPlayerBoxPos][2] = Y;
			PlayerBoxInfo[playerid][piPlayerLastRang]++;
		}
		case 3:
		{
			Y = PlayerBoxInfo[playerid][piPlayerBoxPos][2] - 6.0 - Y;
			PlayerBoxInfo[playerid][piPlayerBoxTD][3] = CreatePlayerTextDraw(playerid,23.000000, Y, string);
			PlayerTextDrawBackgroundColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], 255);
			PlayerTextDrawFont(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], 1);
			PlayerTextDrawLetterSize(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], 0.200000, 1.200000);
			PlayerTextDrawColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], -1);
			PlayerTextDrawSetOutline(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], 0);
			PlayerTextDrawSetProportional(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], 1);
			PlayerTextDrawSetShadow(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], 1);
			PlayerTextDrawUseBox(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], 1);
			PlayerTextDrawBoxColor(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], 130);
			PlayerTextDrawTextSize(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], 150.000000, -20.000000);
			PlayerTextDrawSetSelectable(playerid,PlayerBoxInfo[playerid][piPlayerBoxTD][3], 0);
			PlayerTextDrawShow(playerid, PlayerBoxInfo[playerid][piPlayerBoxTD][3]);

			PlayerBoxInfo[playerid][piPlayerBoxVaild][3] = 1;
			PlayerBoxInfo[playerid][piPlayerBoxPos][3] = Y;
			PlayerBoxInfo[playerid][piPlayerLastRang]++;
		}
	}
	return 1;
}

stock ResetInfoBoxes(playerid)
{
	PlayerBoxInfo[playerid][piPlayerLastRang] = 0;
	for(new i; i < MAX_PLAYERBOXES; i++)
	{
	    PlayerBoxInfo[playerid][piPlayerBoxVaild][i] = 0;
	    PlayerBoxInfo[playerid][piPlayerBoxVaild][i] = 0.0;
	}
	return 1;
}

stock CountInString(string[], wort[])
{
	new count = 0, i = 1, find, countstring;
	while(i == 1)
	{
	    find = strfind(string, wort, true);
		if(find == -1)
		{
			i = 0;
		} else {
			count++;
			countstring = find + strlen(wort);
			strdel(string, 0, countstring);
		}
	}
	return count;
}

stock AddStaticInfoBox(playerid, text[])
{
    if(GetPVarInt(playerid, "moebel_active") > 0) return 1;
	DeleteInfoBox(playerid);
	AddInfoBox(playerid, text, 5000);
	KillTimer(PlayerBoxInfo[playerid][piPlayerBoxTimerID]);
	PlayerBoxInfo[playerid][piPlayerBoxTimerID] = -1;
	SetPVarInt(playerid, "InfoBoxLock", 1);
	return 1;
}

stock DisableStaticBox(playerid, set = 0)
{
	new string[50];
	SetPVarInt(playerid, "InfoBoxLock", 0);
	DeleteInfoBox(playerid);
	if(set == 0)
	{
		if(Zustand[playerid] != INVALID_3D_TEXT && GetPVarInt(playerid, "Eingeloggt") == 1 && SpielerInfo[playerid][pTod] == 0)
		{
			GetPVarString(playerid, "Zustand", string, 50);
			AddStaticInfoBox(playerid,string);
			SetPVarInt(playerid, "Aktiv", 0);
		}
		else
		{
		    SetPVarInt(playerid, "Aktiv", 0);
		}
	}
	else
	{
		if(Zustand[playerid] != INVALID_3D_TEXT && GetPVarInt(playerid, "Eingeloggt") == 1 && SpielerInfo[playerid][pTod] == 0)
		{
	    	SetPVarInt(playerid, "Aktiv", 1);
		}
		else
		{
		    SetPVarInt(playerid, "Aktiv", 0);
		}
	}
	return 1;
}
