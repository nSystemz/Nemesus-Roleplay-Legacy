/* Basketballsystem für Nemesus-Roleplay.net von Amaze & Nemesus */
/*
[~ TASTENBELEGUNGEN ~]
- Linke Maustaste (drücken): Basketball aufnehmen
- Leertaste (halten): Sprinten
- Rechte Maustaste (drücken): Werfen/an Korb hängen
- Enter (drücken): Basketball ablegen

[~ BEFEHLE ~]
/dropball 		-> Ball ablegen
/resetball [PlatzID] 	-> Ball zurücksetzen (bestenfalls Adminlevel erfordern)
/plaetze		-> Auflistung der Basketballplätze, vielleicht ins /navi integrieren
/basketballhelp 	-> Ingame Help Dialogt

[~ INFOS ~]
- 4 vordefinierte Basketballplätze (2 in East LS, 1 in Playa Del Seville, 1 am Santa Maria Beach)
- Basketballplätze können 1 oder 2 Körbe haben
- BallID muss IMMER PlatzID sein (gleiche Reihenfolge im Array)
- BALL_SPEED_NORMAL -> Ball-Geschwindigkeit beim normalen Laufen
- BALL_SPEED_SPRINT -> Ball-Geschwindigkeit beim sprinten
- Körbe für den gleichen Platz, um Bugs zu vermeiden, immer nacheinander
*/

// [~ INCLUDES ~]
#include <a_samp>
#include <streamer>
#include <zcmd>
#include <sscanf2>
#include <colors>

/* Anims/Notizen:
Sprung: BBALL_Dnk_Lnch
Sprung landen: BBALL_Dnk_Lnd
Rennen: BBALL_run
Laufen: BBALL_walk
Wurf: BBALL_Jump_Shot
Aufheben: BBALL_pickup
Verkackt: BBALL_react_miss
Treffer: BBALL_react_score
*/

//MAX_PLAYERS
#undef MAX_PLAYERS
#define MAX_PLAYERS (167)

//Defines
#define PRESSED(%0) \
	(((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
#define HOLDING(%0) \
 	((newkeys & (%0)) == (%0))
#define RELEASED(%0) \
	(((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))

// Sonstiges
#define INVALID_BASKETBALL 999
#define BALL_SPEED_NORMAL 8
#define BALL_SPEED_SPRINT 12
#define INVALID_AREA_ID 999

//Variablen
new publicstring[500],AttachedBall[MAX_PLAYERS],PlayerInArea[MAX_PLAYERS];

//Textdraws
new PlayerText:BasketballDraw[MAX_PLAYERS];

//Plätze
#define MAX_PLAETZE 6
enum BasketballPlaetzeVars
{
    PlatzName[50],
    Float:PlatzMinX,
    Float:PlatzMinY,
    Float:PlatzMaxX,
    Float:PlatzMaxY,
    AnzahlKoerbe // Min 1, Max 2
};

//Zonen
new BasketballZone[MAX_PLAETZE];

new BasketballPlatze[MAX_PLAETZE][BasketballPlaetzeVars] =
{
    {"East Los Santos I", 2306.4458, -1542.8628, 2326.9834, -1513.1411, 2}, // ID 0
    {"East Los Santos II", 2300.3787, -1513.2228, 2280.0935, -1542.5858, 2}, // ID 1
    {"Playa Del Seville", 2796.4600, -2009.1356, 2767.1750, -2029.5885, 2}, // ID 2
    {"Santa Maria Beach", 704.0229, -1882.4192, 684.0726, -1869.5817, 2}, // ID 3
    {"Temple", 1239.1108, -913.1810, 1262.2074, -895.5049, 2}, // ID 4
    {"Staatsgefängnis", 1755.3197, -1543.2664, 1750.1471, -1531.7941, 2} // ID 5
};

//Bälle
#define MAX_BAELLE 6
enum BasketballInfoVars
{
	BallObjectID,
	SyncedPlayer,
	MoveStatus, // 0 = nicht aufgehoben | 1 = zum Boden | 2 = zum Spieler | 3 = Drop | 4 = Drop2
	Float:MovingSpeed
};
new BasketballInfo[MAX_BAELLE][BasketballInfoVars];

enum BasketballObjVars
{
    Float:BallPosX,
    Float:BallPosY,
    Float:BallPosZ,
    ConnectedPlatz
};

//PlatzID muss IMMER BallID sein!!!
new BasketballObjekte[MAX_BAELLE][BasketballObjVars] =
{
    {2316.9741, -1527.4691, 24.4902, 0}, // BallID 0 für Platz 0
    {2290.66724, -1528.35522, 26.00410, 1}, // BallID 1 für Platz 1
    {2782.2583, -2019.6461, 12.6864, 2}, // BallID 2 für Platz 2
    {694.0579, -1876.2213, 4.4603, 3}, // BallID 3 für Platz 3
    {1241.71, -896.17, 41.993, 4}, // BallID 4 für Platz 4
    {1754.6653, -1532.1538, 8.5594, 5} // BallID 5 für Platz 5
};

//Körbe
#define MAX_KOERBE 12
enum BasketballKorbVars
{
    Float:KorbBallPosX,
    Float:KorbBallPosY,
    Float:KorbBallPosZ,
    ConnectedPlatz
};

//Körbe für den gleichen Platz, um Bugs zu vermeiden, immer nacheinander!!!
new BasketballKoerbe[MAX_KOERBE][BasketballKorbVars] =
{
    {2316.8579, -1514.7898, 27.6032, 0}, // Korb 1 für Platz 0
    {2317.0122, -1541.1315, 27.6032, 0}, // Korb 2 für Platz 0

    {2290.5140, -1514.7980, 29.1096, 1}, // Korb 1 für Platz 1
    {2290.6943, -1541.1581, 29.1380, 1}, // Korb 2 für Platz 1

    {2794.9844, -2019.5264, 15.6516, 2}, // Korb 1 für Platz 2
    {2768.6729, -2019.6849, 15.6516, 2}, // Korb 2 für Platz 2

    {702.2483, -1876.0511, 7.5803, 3}, // Korb 1 für Platz 3
    {685.8880, -1876.2213, 7.5803, 3}, // Korb 2 für Platz 3
    
    {1242.77, -906.718, 45.2035, 4}, // Korb 1 für Platz 4
    {1258.68, -903.991, 45.1934, 4}, // Korb 2 für Platz 4
    
    {1752.5143, -1532.3668, 11.3492, 5}, // Korb 1 für Platz 5
    {1752.5958, -1541.6628, 11.3492, 5} // Korb 2 für Platz 5
};

//Publics
public OnFilterScriptInit()
{
    for(new BallID; BallID < MAX_BAELLE; BallID++)
    {
        BasketballInfo[BallID][MovingSpeed] = BALL_SPEED_NORMAL;
        BasketballInfo[BallID][SyncedPlayer] = INVALID_PLAYER_ID;
        BasketballInfo[BallID][BallObjectID] = CreateDynamicObject(2114, BasketballObjekte[BallID][BallPosX], BasketballObjekte[BallID][BallPosY], BasketballObjekte[BallID][BallPosZ], 0.0, 0.0, 0.0);
        SetDynamicObjectMaterial(BasketballInfo[BallID][BallObjectID], 0, 2114, "basketball", "basketball2", 0xFFFFFFFF);
	}
	for(new PlatzID; PlatzID < MAX_PLAETZE; PlatzID++)
 	{
    	BasketballZone[PlatzID] = CreateDynamicRectangle(BasketballPlatze[PlatzID][PlatzMinX],BasketballPlatze[PlatzID][PlatzMinY],BasketballPlatze[PlatzID][PlatzMaxX],BasketballPlatze[PlatzID][PlatzMaxY]);
	}
    return 1;
}

public OnFilterScriptExit()
{
    for(new BallID; BallID < MAX_BAELLE; BallID++)
    {
        if(IsValidDynamicObject(BasketballInfo[BallID][BallObjectID]))
        {
        	DestroyDynamicObject(BasketballInfo[BallID][BallObjectID]);
		}
    }
   	for(new PlatzID; PlatzID < MAX_PLAETZE; PlatzID++)
 	{
    	DestroyDynamicArea(BasketballZone[PlatzID]);
	}
    return 1;
}

public OnPlayerEnterDynamicArea(playerid, areaid)
{
	for(new PlatzID; PlatzID < MAX_PLAETZE; PlatzID++)
 	{
		if(areaid == BasketballZone[PlatzID])
		{
		    PlayerInArea[playerid] = PlatzID;
		    ShowPlayerPlatzInfo(playerid, PlatzID);
		    AttachedBall[playerid] = INVALID_BASKETBALL;
		    SetPVarInt(playerid, "AttachedBall", 0);
		}
	}
	return 1;
}

public OnPlayerLeaveDynamicArea(playerid, areaid)
{
	for(new PlatzID; PlatzID < MAX_PLAETZE; PlatzID++)
 	{
		if(areaid == BasketballZone[PlatzID])
		{
		    PlayerInArea[playerid] = INVALID_AREA_ID;
		    HidePlayerPlatzInfo(playerid);
		    if(AttachedBall[playerid] != INVALID_BASKETBALL) DropBasketball(playerid);
		    SetPVarInt(playerid, "AttachedBall", 0);
		}
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
    SetPVarInt(playerid, "BasketballDraw", 1);
    BasketballDraw[playerid] = CreatePlayerTextDraw(playerid, 69.466918, 321.011047, "~y~BASKETBALLPLATZ:~n~~w~Santa Maria Beach (3)");
    PlayerTextDrawLetterSize(playerid, BasketballDraw[playerid], 0.167999, 0.637629);
    PlayerTextDrawTextSize(playerid, BasketballDraw[playerid], 1.689998, 73.589912);
    PlayerTextDrawAlignment(playerid, BasketballDraw[playerid], 2);
    PlayerTextDrawColor(playerid, BasketballDraw[playerid], -1);
    PlayerTextDrawUseBox(playerid, BasketballDraw[playerid], 1);
    PlayerTextDrawBoxColor(playerid, BasketballDraw[playerid], 136);
    PlayerTextDrawSetShadow(playerid, BasketballDraw[playerid], 0);
    PlayerTextDrawSetOutline(playerid, BasketballDraw[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, BasketballDraw[playerid], 255);
    PlayerTextDrawFont(playerid, BasketballDraw[playerid], 1);
    PlayerTextDrawSetProportional(playerid, BasketballDraw[playerid], 1);
    PlayerTextDrawSetShadow(playerid, BasketballDraw[playerid], 0);
    AttachedBall[playerid] = INVALID_BASKETBALL;
    SetPVarInt(playerid, "AttachedBall", 0);
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	if(GetPVarInt(playerid, "BasketballDraw") == 1)
	{
		PlayerTextDrawHide(playerid,BasketballDraw[playerid]);
		PlayerTextDrawDestroy(playerid,BasketballDraw[playerid]);
	}
	SetPVarInt(playerid, "BasketballDraw", 0);
    DropBasketball(playerid);
    PlayerInArea[playerid] = INVALID_AREA_ID;
    return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
    DropBasketball(playerid);
    return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
    DropBasketball(playerid);
    return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
    DropBasketball(playerid);
    return 1;
}

forward SetBasketballAnim(playerid, Anim);
public SetBasketballAnim(playerid, Anim)
{
	new rand = random(40);
	if(rand > 15)
	{
	    if(Anim == 1) ApplyAnimation(playerid, "BSKTBALL", "BBALL_Jump_Shot", 4.1,0,0,0,0,0,1);
		if(Anim == 2) ApplyAnimation(playerid, "BSKTBALL", "BBALL_react_score",4.1,0,0,0,0,0,1);
		if(Anim == 3) ApplyAnimation(playerid, "BSKTBALL", "BBALL_react_miss",4.1,0,0,0,0,0,1);
	}
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	new Float:X, Float:Y, Float:Z;
	if(PlayerInArea[playerid] != INVALID_AREA_ID)
	{
		if(newkeys & KEY_FIRE && AttachedBall[playerid] != INVALID_BASKETBALL)
		{
			for(new i = 0, j = GetPlayerPoolSize(); i <= j; i++)
			{
	  			if(i != INVALID_PLAYER_ID && !IsPlayerNPC(i) && IsPlayerConnected(i) && PlayerInArea[i] == PlayerInArea[playerid] && AttachedBall[i] == INVALID_BASKETBALL)
	    		{
	      			if(IsPlayerFacingPlayer(playerid, i, 15))
	         		{
					    AttachedBall[i] = AttachedBall[playerid];
					    SetPVarInt(i, "AttachedBall", 1);
					    AttachedBall[playerid] = INVALID_BASKETBALL;
					    SetPVarInt(playerid, "AttachedBall", 0);
						new BallID = AttachedBall[i];
					    BasketballInfo[BallID][SyncedPlayer] = i;
	        			new Float:PlayerPos[3];
	        			ApplyAnimation(playerid, "BSKTBALL", "BBALL_Jump_Shot", 4.1,0,0,0,0,0,1);
	    				GetPlayerPos(i, PlayerPos[0], PlayerPos[1], PlayerPos[2]);
						MoveDynamicObject(BasketballInfo[BallID][BallObjectID], PlayerPos[0], PlayerPos[1], PlayerPos[2], 2);
	         		    return 1;
	         		}
	    		}
			}
		}
	    if(PRESSED(KEY_FIRE) && !IsPlayerInAnyVehicle(playerid) && AttachedBall[playerid] == INVALID_BASKETBALL)
	    {
	    	for(new BallID; BallID < MAX_BAELLE; BallID++)
	     	{
	     	    if((BasketballInfo[BallID][SyncedPlayer] == INVALID_PLAYER_ID) && (PlayerInArea[playerid] == BasketballObjekte[BallID][ConnectedPlatz]))
	     	    {
		     	    GetDynamicObjectPos(BasketballInfo[BallID][BallObjectID],X,Y,Z);
		      		if(IsPlayerInRangeOfPoint(playerid, 1.5, X, Y, Z))
		        	{
		         		PickupBasketball(playerid, BallID);
		           	}
				}
	        }
	    }
	    else if(AttachedBall[playerid] != INVALID_BASKETBALL && !IsPlayerInAnyVehicle(playerid))
		{
		    if(PRESSED(KEY_HANDBRAKE))
			{
			    new BallID = AttachedBall[playerid],PlatzID = PlayerInArea[playerid];
			    for(new Korb; Korb < MAX_KOERBE; Korb++)
	    		{
					if(IsPlayerInRangeOfPoint(playerid, 2.5, BasketballKoerbe[Korb][KorbBallPosX], BasketballKoerbe[Korb][KorbBallPosY], BasketballKoerbe[Korb][KorbBallPosZ]) && PlatzID == BasketballKoerbe[Korb][ConnectedPlatz])
					{
					    StopDynamicObject(BasketballInfo[BallID][BallObjectID]);
					    BasketballInfo[BallID][MoveStatus] = 4;
						GameTextForPlayer(playerid, "~g~Korb!", 3000, 4);
					    ApplyAnimation(playerid, "BSKTBALL", "BBALL_DNK", 4.1, 0, 1, 1, 1, 1, 1);
					    SetTimerEx("FallDownAnim", 997, false, "i", playerid);
					    MoveDynamicObject(BasketballInfo[BallID][BallObjectID], BasketballKoerbe[Korb][KorbBallPosX], BasketballKoerbe[Korb][KorbBallPosY], BasketballKoerbe[Korb][KorbBallPosZ], 7);
					    ResetBasketball(playerid, BallID);
					    return 1;
					}
					else if(BasketballPlatze[PlatzID][AnzahlKoerbe] == 1)
					{
						if(IsPlayerInRangeOfPoint(playerid, 15.0, BasketballKoerbe[Korb][KorbBallPosX], BasketballKoerbe[Korb][KorbBallPosY], BasketballKoerbe[Korb][KorbBallPosZ]) && PlatzID == BasketballKoerbe[Korb][ConnectedPlatz])
						{
						    SetPlayerSkin(playerid,GetPlayerSkinEx(playerid));
						    PlayerHitKorb(playerid, Korb, BallID, random(40));
		                    return 1;
						}
					}
					else if(BasketballPlatze[PlatzID][AnzahlKoerbe] == 2)
					{
					    for(new Korb2; Korb2 < MAX_KOERBE; Korb2++)
	    				{
	    				    if((Korb != Korb2) && PlatzID == BasketballKoerbe[Korb][ConnectedPlatz] && (BasketballKoerbe[Korb][ConnectedPlatz] == BasketballKoerbe[Korb2][ConnectedPlatz]))
	    				    {
	    				        if(GetPlayerDistanceFromPoint(playerid, BasketballKoerbe[Korb][KorbBallPosX], BasketballKoerbe[Korb][KorbBallPosY], BasketballKoerbe[Korb][KorbBallPosZ]) < GetPlayerDistanceFromPoint(playerid, BasketballKoerbe[Korb2][KorbBallPosX], BasketballKoerbe[Korb2][KorbBallPosY], BasketballKoerbe[Korb2][KorbBallPosZ])) PlayerHitKorb(playerid, Korb, BallID, random(40));
									else PlayerHitKorb(playerid, Korb2, BallID, random(40));
	    				    }
	    				}
					}
			    }
			}
		    else if(HOLDING(KEY_SPRINT))
		    {
		        new BallID = AttachedBall[playerid];
		        BasketballInfo[BallID][MovingSpeed] = BALL_SPEED_SPRINT;
		        ApplyAnimation(BasketballInfo[BallID][SyncedPlayer], "BSKTBALL", "BBALL_run", 4.1, 1, 1, 1, 1, 1, 1);
		    }
		    else if(RELEASED(KEY_SPRINT))
		    {
		        new BallID = AttachedBall[playerid];
		        BasketballInfo[BallID][MovingSpeed] = BALL_SPEED_NORMAL;
		        ApplyAnimation(BasketballInfo[BallID][SyncedPlayer], "BSKTBALL", "BBALL_walk", 4.1, 1, 1, 1, 1, 1, 1);
		    }
		    else if(PRESSED(KEY_SECONDARY_ATTACK))
		    {
		        if(AttachedBall[playerid] == INVALID_BASKETBALL)
		        return SendClientMessage(playerid, COLOR_RED, "Du spielst kein Basketball!");
			    DropBasketball(playerid);
			    SendClientMessage(playerid, COLOR_WHITE, "Du hast den Basketball abgelegt!");
		    }
		}
	}
    return 1;
}

forward FallDownAnim(playerid);
public FallDownAnim(playerid)
{
  	ApplyAnimation(playerid, "BSKTBALL", "BBALL_Dnk_Lnd", 4.1, 0, 1, 1, 0, 1, 1);
  	return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart)
{
    new Float:Health, Float:Armor;
 	GetPlayerHealth(playerid, Health);
 	GetPlayerArmour(playerid, Armor);
    if(issuerid != INVALID_PLAYER_ID)
    {
        if(AttachedBall[playerid] != INVALID_BASKETBALL)
		{
		    SetPlayerSkin(playerid,GetPlayerSkinEx(playerid));
		    AttachedBall[issuerid] = AttachedBall[playerid];
		    SetPVarInt(issuerid, "AttachedBall", 1);
		    AttachedBall[playerid] = INVALID_BASKETBALL;
		    SetPVarInt(playerid, "AttachedBall", 0);
			new BallID = AttachedBall[issuerid];
		    BasketballInfo[BallID][SyncedPlayer] = issuerid;
   			SetPlayerHealth(playerid, Health+amount);
			SetPlayerArmour(playerid, Armor);
		}
    }
	return 1;
}

public OnDynamicObjectMoved(objectid)
{
    for(new BallID; BallID < MAX_BAELLE; BallID++)
    {
        if(BasketballInfo[BallID][BallObjectID] == objectid)
        {
            new Float:PlayerPos[3];
    		GetPlayerPos(BasketballInfo[BallID][SyncedPlayer], PlayerPos[0], PlayerPos[1], PlayerPos[2]);
    		GetXYInFrontOfPlayer(BasketballInfo[BallID][SyncedPlayer],PlayerPos[0], PlayerPos[1],0.95);
            if(BasketballInfo[BallID][MoveStatus] == 1)
            {
                //von Spieler zu Boden
                if(PlayerInArea[BasketballInfo[BallID][SyncedPlayer]] != INVALID_AREA_ID)
                {
	                if(BasketballInfo[BallID][MovingSpeed] == BALL_SPEED_SPRINT) ApplyAnimation(BasketballInfo[BallID][SyncedPlayer], "BSKTBALL", "BBALL_run", 4.1, 1, 1, 1, 1, 1, 1);
	       			else ApplyAnimation(BasketballInfo[BallID][SyncedPlayer], "BSKTBALL", "BBALL_walk", 4.1, 1, 1, 1, 1, 1, 1);
				}
				BasketballInfo[BallID][MoveStatus] = 2;
                MoveDynamicObject(BasketballInfo[BallID][BallObjectID], PlayerPos[0], PlayerPos[1], PlayerPos[2], BasketballInfo[BallID][MovingSpeed], random(50), random(50), random(50));
            }
            else if(BasketballInfo[BallID][MoveStatus] == 2)
            {
                //von Boden zu Spieler
                if(PlayerInArea[BasketballInfo[BallID][SyncedPlayer]] != INVALID_AREA_ID)
                {
                	if(BasketballInfo[BallID][MovingSpeed] == BALL_SPEED_SPRINT) ApplyAnimation(BasketballInfo[BallID][SyncedPlayer], "BSKTBALL", "BBALL_run", 4.1, 1, 1, 1, 1, 1, 1);
       				else ApplyAnimation(BasketballInfo[BallID][SyncedPlayer], "BSKTBALL", "BBALL_walk", 4.1, 1, 1, 1, 1, 1, 1);
				}
                BasketballInfo[BallID][MoveStatus] = 1;
                MoveDynamicObject(BasketballInfo[BallID][BallObjectID], PlayerPos[0], PlayerPos[1], BasketballObjekte[BallID][BallPosZ], BasketballInfo[BallID][MovingSpeed], random(50), random(50), random(50));

            }
            else if(BasketballInfo[BallID][MoveStatus] == 3)
            {
                //Drop
                BasketballInfo[BallID][MoveStatus] = 0;
                ApplyAnimation(BasketballInfo[BallID][SyncedPlayer], "BSKTBALL", "BBALL_pickup", 4.1, 0, 1, 1, 1, 1, 1);
            }
            else if(BasketballInfo[BallID][MoveStatus] == 4)
            {
                //Drop 2
                new Float:ObjectPos[3];
                GetDynamicObjectPos(objectid, ObjectPos[0], ObjectPos[1], ObjectPos[2]);
                MoveDynamicObject(objectid, ObjectPos[0], ObjectPos[1], BasketballObjekte[BallID][BallPosZ], 6);
            }
        }
    }
	return 1;
}

//Stocks
//ConvertEncoding
stock ConvertEncoding(string[])
{
	static const
	scRealChars[256] =
	{
 		0,   1,   2,   3,   4,   5,   6,   7,   8,   9,  10,  11,  12,  13,  14,  15,
 		16,  17,  18,  19,  20,  21,  22,  23,  24,  25,  26,  27,  28,  29,  30,  31,
 		32,  33,  34,  35,  36,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,
 		48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,
 		64,  65,  66,  67,  68,  69,  70,  71,  72,  73,  74,  75,  76,  77,  78,  79,
 		80,  81,  82,  83,  84,  85,  86,  87,  88,  89,  90,  91,  92,  93,  94,  95,
 		96,  97,  98,  99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111,
		112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127,
		128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143,
		144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159,
		160,  94, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175,
		124, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 175,
		128, 129, 130, 195, 131, 197, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141,
		208, 173, 142, 143, 144, 213, 145, 215, 216, 146, 147, 148, 149, 221, 222, 150,
		151, 152, 153, 227, 154, 229, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164,
		240, 174, 165, 166, 167, 245, 168, 247, 248, 169, 170, 171, 172, 253, 254, 255
	};
	if (ispacked(string))
	{
		for (new i = 0, len = strlen(string); i != len; ++i)
		{
			string{i} = scRealChars[string{i}];
		}
	}
	else
	{
		for (new i = 0, len = strlen(string), ch; i != len; ++i)
		{
			if (0 <= (ch = string[i]) < 256)
			{
				string[i] = scRealChars[ch];
			}
		}
	}
	return 1;
}

stock IsPlayerFacingPlayer(playerid, targetid, Float:dOffset)
{
	new Float:pX,Float:pY,Float:pZ,Float:pA,Float:X,Float:Y,Float:Z,Float:ang;
	
	if(!IsPlayerConnected(playerid) || !IsPlayerConnected(targetid)) return 0;
	GetPlayerPos(targetid, pX, pY, pZ);
 	GetPlayerPos(playerid, X, Y, Z);
  	GetPlayerFacingAngle(playerid, pA);

	if( Y > pY ) ang = (-acos((X - pX) / floatsqroot((X - pX)*(X - pX) + (Y - pY)*(Y - pY))) - 90.0);
 	else if( Y < pY && X < pX ) ang = (acos((X - pX) / floatsqroot((X - pX)*(X - pX) + (Y - pY)*(Y - pY))) - 450.0);
  	else if( Y < pY ) ang = (acos((X - pX) / floatsqroot((X - pX)*(X - pX) + (Y - pY)*(Y - pY))) - 90.0);

	if(AngleInRangeOfAngle(-ang, pA, dOffset)) return true;
	return false;
}

stock AngleInRangeOfAngle(Float:a1, Float:a2, Float:range)
{
	a1 -= a2;
 	if((a1 < range) && (a1 > -range)) return true;
 	
  	return false;
}

stock GetPlayerSkinEx(playerid)
{
	return (!GetPlayerCustomSkin(playerid) ? GetPlayerSkin(playerid) : GetPlayerCustomSkin(playerid));
}

stock GetXYInFrontOfPlayer(playerid, &Float:x, &Float:y, Float:distance)
{
	new Float:a;
 	GetPlayerPos(playerid, x, y, a);
  	GetPlayerFacingAngle(playerid, a);
   	if (GetPlayerVehicleID(playerid))
    {
    	GetVehicleZAngle(GetPlayerVehicleID(playerid), a);
    }
    x += (distance * floatsin(-a, degrees));
    y += (distance * floatcos(-a, degrees));
    return 1;
}

stock SetPlayerLookAt(playerid, Float:X, Float:Y)
{
    new Float:Px, Float:Py, Float: Pa;
    GetPlayerPos(playerid, Px, Py, Pa);
    Pa = floatabs(atan((Y-Py)/(X-Px)));
    if (X <= Px && Y >= Py) Pa = floatsub(180, Pa);
    else if (X < Px && Y < Py) Pa = floatadd(Pa, 180);
    else if (X >= Px && Y <= Py) Pa = floatsub(360.0, Pa);
    Pa = floatsub(Pa, 90.0);
    if (Pa >= 360.0) Pa = floatsub(Pa, 360.0);
    SetPlayerFacingAngle(playerid, Pa);
}

stock ShowPlayerPlatzInfo(playerid, PlatzID)
{
    format(publicstring, sizeof(publicstring), "~y~BASKETBALLPLATZ:~n~~w~%s (%i)", BasketballPlatze[PlatzID][PlatzName], PlatzID+1);
    ConvertEncoding(publicstring);
    PlayerTextDrawSetString(playerid, BasketballDraw[playerid], publicstring);
    PlayerTextDrawShow(playerid, BasketballDraw[playerid]);
    return 1;
}

stock HidePlayerPlatzInfo(playerid)
{
    PlayerTextDrawHide(playerid, BasketballDraw[playerid]);
    return 1;
}

stock PickupBasketball(playerid, BallID)
{
	ApplyAnimation(playerid, "BSKTBALL", "BBALL_pickup", 4.1, 0, 1, 1, 1, 1, 1);
    AttachedBall[playerid] = BallID;
	SetPVarInt(playerid, "AttachedBall", 1);
    new Float:PlayerPos[3];
    GetPlayerPos(playerid, PlayerPos[0], PlayerPos[1], PlayerPos[2]);
	MoveDynamicObject(BasketballInfo[BallID][BallObjectID], PlayerPos[0], PlayerPos[1], PlayerPos[2], 2);
	BasketballInfo[BallID][SyncedPlayer] = playerid;
	BasketballInfo[BallID][MoveStatus] = 1;
	BasketballInfo[BallID][MovingSpeed] = BALL_SPEED_NORMAL;
	return 1;
}

stock ResetBasketball(playerid, BallID)
{
    if(BallID == INVALID_BASKETBALL) return 0;
    BasketballInfo[BallID][MovingSpeed] = BALL_SPEED_NORMAL;
    BasketballInfo[BallID][SyncedPlayer] = INVALID_PLAYER_ID;
    AttachedBall[playerid] = INVALID_BASKETBALL;
    SetPVarInt(playerid, "AttachedBall", 0);
    SetDynamicObjectMaterial(BasketballInfo[BallID][BallObjectID], 0, 2114, "basketball", "basketball2", 0xFFFFFFFF);
	return 1;
}

stock DropBasketball(playerid)
{
	new BallID = AttachedBall[playerid],Float:PlayerPos[3];
    if(BallID == INVALID_BASKETBALL) return 0;
    BasketballInfo[BallID][MoveStatus] = 3;
    GetPlayerPos(playerid, PlayerPos[0], PlayerPos[1], PlayerPos[2]);
	MoveDynamicObject(BasketballInfo[BallID][BallObjectID], PlayerPos[0], PlayerPos[1], BasketballObjekte[BallID][BallPosZ], 2);
	ApplyAnimation(playerid, "BSKTBALL", "BBALL_pickup", 4.1, 0, 1, 1, 0, 1, 1);
	ResetBasketball(playerid, BallID);
	return 1;
}

stock PlayerHitKorb(playerid, Korb, BallID, Treffer)
{
    StopDynamicObject(BasketballInfo[BallID][BallObjectID]);
    SetPlayerLookAt(playerid, BasketballKoerbe[Korb][KorbBallPosX], BasketballKoerbe[Korb][KorbBallPosY]);
    ApplyAnimation(playerid, "BSKTBALL", "BBALL_Jump_Shot",4.1,0,0,0,0,0,1);
    if(Treffer <= 15)
	{
	    // Treffer
	    GameTextForPlayer(playerid, "~g~Korb!", 3000, 4);
	    BasketballInfo[BallID][MoveStatus] = 4;
	    SetTimerEx("SetBasketballAnim", 1231, false, "ii", playerid, 2);
	    MoveDynamicObject(BasketballInfo[BallID][BallObjectID], BasketballKoerbe[Korb][KorbBallPosX], BasketballKoerbe[Korb][KorbBallPosY], BasketballKoerbe[Korb][KorbBallPosZ], 12, random(360), random(360), random(360));
	}
	else
	{
	    // Kein Treffer
	    GameTextForPlayer(playerid, "~r~Daneben!", 3000, 4);
	    BasketballInfo[BallID][MoveStatus] = 4;
	    SetTimerEx("SetBasketballAnim", 1231, false, "ii", playerid, 3);
	    MoveDynamicObject(BasketballInfo[BallID][BallObjectID], BasketballKoerbe[Korb][KorbBallPosX]+random(2), BasketballKoerbe[Korb][KorbBallPosY]+random(2), BasketballKoerbe[Korb][KorbBallPosZ], 12, random(360), random(360), random(360));
	}
	ResetBasketball(playerid, BallID);
	return 1;
}

command(dropball, playerid, params[])
{
    if(AttachedBall[playerid] == INVALID_BASKETBALL)
        return SendClientMessage(playerid, COLOR_RED, "Du spielst kein Basketball!");
    DropBasketball(playerid);
    SendClientMessage(playerid, COLOR_WHITE, "Du hast den Basketball erfolgreich abgelegt!");
    return 1;
}

command(resetball, playerid, params[])
{
    new PlatzID;
   	if(GetPVarInt(playerid, "Adminduty") == 0)
		return SendClientMessage(playerid,COLOR_RED,"Du bist kein Administrator oder dein Administratorenlevel ist zu niedrig!");
    if(sscanf(params, "i", PlatzID))
        return SendClientMessage(playerid, COLOR_GREY, "Befehl: /resetball [Platz-ID]");
	if(PlatzID > MAX_BAELLE || PlatzID <= 0)
	    return SendClientMessage(playerid, COLOR_RED, "Ungültige Platz-ID!");
 	PlatzID = PlatzID -1;
   	for(new i = 0, j = GetPlayerPoolSize(); i <= j; i++)
	{
  		if(i != INVALID_PLAYER_ID && !IsPlayerNPC(i) && IsPlayerConnected(i))
    	{
	    	if(AttachedBall[i] == PlatzID) AttachedBall[i] = INVALID_BASKETBALL;
		}
	}
	if(IsValidDynamicObject(BasketballInfo[PlatzID][BallObjectID]))
	{
    	DestroyDynamicObject(BasketballInfo[PlatzID][BallObjectID]);
	}
    BasketballInfo[PlatzID][MovingSpeed] = BALL_SPEED_NORMAL;
    BasketballInfo[PlatzID][SyncedPlayer] = INVALID_PLAYER_ID;
    BasketballInfo[PlatzID][BallObjectID] = CreateDynamicObject(2114, BasketballObjekte[PlatzID][BallPosX], BasketballObjekte[PlatzID][BallPosY], BasketballObjekte[PlatzID][BallPosZ], 0.0, 0.0, 0.0);
    StopDynamicObject(BasketballInfo[PlatzID][BallObjectID]);
	format(publicstring, sizeof(publicstring), "Der Ball vom Platz \"%s\" (ID %i) wurde zurückgesetzt!", BasketballPlatze[PlatzID][PlatzName], PlatzID+1);
	SendClientMessage(playerid, COLOR_WHITE, publicstring);
	return 1;
}
