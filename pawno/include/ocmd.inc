/*
	ocmd 2.1.1
	by Kleiner Opa
	best command-solution for sa:mp
	supports samp 0.2X, 0.3a, 0.3b, 0.3c, 0.3d, 0.3e, 0.3x
	email: fisch70000@gmail.com
	http://forum.sa-mp.de/index.php?page=User&userID=24998
*/

#include <a_samp>

forward ocmdOnPlayerCommandText(playerid,cmdtext[]);
#if defined OCMD_BEFORE_CALLBACK
	forward BeforePlayerCommandText(playerid,cmdtext[]);
	new bool:ocmdBeforeCallback,bool:ocmdInit;
#endif

#if !defined OCMD_COMMAND_LOG_FORMAT
	#define OCMD_COMMAND_LOG_FORMAT "[cmd] [%s]: %s"
#endif

#define ocmd:%1(%2) forward ocmd_%1(%2);\
public ocmd_%1(%2)

#define ocmd@2:%1,%3(%2) forward ocmd_%3(ocmdPlayerid,ocmdParams[]);\
public ocmd_%3(ocmdPlayerid, ocmdParams[]){return ocmd_%1(ocmdPlayerid, ocmdParams);}\
forward ocmd_%1(%2);\
public ocmd_%1(%2)

#define ocmd@3:%1,%3,%4(%2) forward ocmd_%3(ocmdPlayerid,ocmdParams[]);\
public ocmd_%3(ocmdPlayerid, ocmdParams[]){return ocmd_%1(ocmdPlayerid, ocmdParams);}\
forward ocmd_%4(ocmdPlayerid,ocmdParams[]);\
public ocmd_%4(ocmdPlayerid, ocmdParams[]){return ocmd_%1(ocmdPlayerid, ocmdParams);}\
forward ocmd_%1(%2);\
public ocmd_%1(%2)

#define ocmd@4:%1,%3,%4,%5(%2) forward ocmd_%3(ocmdPlayerid,ocmdParams[]);\
public ocmd_%3(ocmdPlayerid, ocmdParams[]){return ocmd_%1(ocmdPlayerid, ocmdParams);}\
forward ocmd_%4(ocmdPlayerid,ocmdParams[]);\
public ocmd_%4(ocmdPlayerid, ocmdParams[]){return ocmd_%1(ocmdPlayerid, ocmdParams);}\
forward ocmd_%5(ocmdPlayerid,ocmdParams[]);\
public ocmd_%5(ocmdPlayerid, ocmdParams[]){return ocmd_%1(ocmdPlayerid, ocmdParams);}\
forward ocmd_%1(%2);\
public ocmd_%1(%2)

public OnPlayerCommandText(playerid,cmdtext[])
{
	#if defined OCMD_BEFORE_CALLBACK
		if(!ocmdInit)
		{
			if(funcidx("BeforePlayerCommandText")!=-1)ocmdBeforeCallback=true;
			ocmdInit=true;
		}
	#endif
	new ocmdStr[32]="ocmd_",
		ocmdI=1,
	#if defined OCMD_COMMAND_LOG
		ocmdName[MAX_PLAYER_NAME],
	#endif
	bool:ocmdNoParams;
	#if defined OCMD_COMMAND_LOG
		GetPlayerName(playerid,ocmdName,sizeof ocmdName);
		printf(OCMD_COMMAND_LOG_FORMAT,ocmdName,cmdtext);
	#endif
	#if defined OCMD_BEFORE_CALLBACK
		if(ocmdBeforeCallback&&!CallLocalFunction("BeforePlayerCommandText","ds",playerid,cmdtext))return 1;
	#endif
	for(;ocmdI<128;ocmdI++)
	{
		if(!cmdtext[ocmdI]||cmdtext[ocmdI]==' ')
		{
			if(!cmdtext[ocmdI]||!cmdtext[ocmdI+1])ocmdNoParams=true;
			break;
		}
		ocmdStr[ocmdI+4]=tolower(cmdtext[ocmdI]);
	}
	if(!ocmdNoParams&&CallLocalFunction(ocmdStr,"ds",playerid,cmdtext[ocmdI+1]))return 1;
	if(ocmdNoParams&&CallLocalFunction(ocmdStr,"ds",playerid," "))return 1;
	return CallLocalFunction("ocmdOnPlayerCommandText","ds",playerid,cmdtext);
}

#if defined _ALS_OnPlayerCommandText
	#undef OnPlayerCommandText
#else
	#define _ALS_OnPlayerCommandText
#endif
#define OnPlayerCommandText ocmdOnPlayerCommandText