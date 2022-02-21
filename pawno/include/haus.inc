//Haussystem
new AktuellesHaus = 0;
#define MAX_HOUSES 100
enum hausinfo
{
    hID,
    hPreis,
    hEingetragen,
    hBesitzer[MAX_PLAYER_NAME],
    hInterior,
    Float:hX,
    Float:hY,
    Float:hZ,
    hMieter,
    hMaxMieter,
    hLock,
	hRent,
	hKasse,
	hHeal,
	hOwned,
	Text3D:h3DText,
	hPickup,
	FCount,
	FWeapon[MAX_FURNITURE],
	FMuni[MAX_FURNITURE],
	FModel[MAX_FURNITURE],
	FurnitureObj[MAX_FURNITURE],
	Float:FPosX[MAX_FURNITURE],
	Float:FPosY[MAX_FURNITURE],
	Float:FPosZ[MAX_FURNITURE],
	Float:FRotX[MAX_FURNITURE],
	Float:FRotY[MAX_FURNITURE],
	Float:FRotZ[MAX_FURNITURE],
	FAkt[MAX_FURNITURE],
	bool:fVW[MAX_FURNITURE],
	FSchild[MAX_FURNITURE],
	hBuero,
	hBueroName[64],
	Float:hsx,
	Float:hsy,
	Float:hsz,
	Float:hsa,
	hEintritt,
	hSkin[5],
	hStrom,
	hSpawnWorld,
	hSpawnInterior,
	hLicht,
	hWPin,
	hWatchdog,
	hAppartment,
	hAnrufer,
	hLautsprecher,
	hRadioLink[128],
	hWatchE,
	hLastDil,
	hWCool,
	hDefinition[128],
   	hKlingelSchild,
  	hGates,
  	hGarage,
  	hDiebesgut,
	hVersteigert,
	hFirma
};
new HausInfo[MAX_HOUSES][hausinfo];

//Haussystem
forward LoadHouses();
public LoadHouses()
{
    new rows, fields, content[185],string[315];
    cache_get_data(rows, fields);
	if(rows)
	{
  		while(AktuelleHaus<rows)
		{
    		cache_get_field_content(AktuelleHaus,"hID",content);
	        HausInfo[AktuelleHaus][hID] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hPreis",content);
	        HausInfo[AktuelleHaus][hPreis] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hLevel",content);
	        HausInfo[AktuelleHaus][hEingetragen] = strval(content);
	        if(HausInfo[AktuelleHaus][hEingetragen] > 1)
	        {
	            HausInfo[AktuelleHaus][hEingetragen] = 0;
	        }
	        cache_get_field_content(AktuelleHaus,"hBesitzer",content);
	        format(HausInfo[AktuelleHaus][hBesitzer], MAX_PLAYER_NAME, "%s", content);
	        cache_get_field_content(AktuelleHaus,"hInterior",content);
	        HausInfo[AktuelleHaus][hInterior] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hMieter",content);
	        HausInfo[AktuelleHaus][hMieter] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hMaxMieter",content);
	        HausInfo[AktuelleHaus][hMaxMieter] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hLock",content);
	        HausInfo[AktuelleHaus][hLock] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hRent",content);
	        HausInfo[AktuelleHaus][hRent] = strval(content);
   			cache_get_field_content(AktuelleHaus,"hKasse",content);
	        HausInfo[AktuelleHaus][hKasse] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hHeal",content);
	        HausInfo[AktuelleHaus][hHeal] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hOwned",content);
	        HausInfo[AktuelleHaus][hOwned] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hX",content);
	        HausInfo[AktuelleHaus][hX] = floatstr(content);
	        cache_get_field_content(AktuelleHaus,"hY",content);
	        HausInfo[AktuelleHaus][hY] = floatstr(content);
	        cache_get_field_content(AktuelleHaus,"hZ",content);
	        HausInfo[AktuelleHaus][hZ] = floatstr(content);
	        cache_get_field_content(AktuelleHaus,"hbuero",content);
	        HausInfo[AktuelleHaus][hBuero] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hBueroName",content);
	        format(HausInfo[AktuelleHaus][hBueroName],64,content);
	        cache_get_field_content(AktuelleHaus,"hsx",content);
	        HausInfo[AktuelleHaus][hsx] = floatstr(content);
	        cache_get_field_content(AktuelleHaus,"hsy",content);
	        HausInfo[AktuelleHaus][hsy] = floatstr(content);
	        cache_get_field_content(AktuelleHaus,"hsz",content);
         	HausInfo[AktuelleHaus][hsz] = floatstr(content);
	        cache_get_field_content(AktuelleHaus,"hsa",content);
         	HausInfo[AktuelleHaus][hsa] = floatstr(content);
	        cache_get_field_content(AktuelleHaus,"hEintritt",content);
	        HausInfo[AktuelleHaus][hEintritt] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hSkin0",content);
	        HausInfo[AktuelleHaus][hSkin][0] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hSkin1",content);
	        HausInfo[AktuelleHaus][hSkin][1] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hSkin2",content);
	        HausInfo[AktuelleHaus][hSkin][2] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hSkin3",content);
	        HausInfo[AktuelleHaus][hSkin][3] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hSkin4",content);
	        HausInfo[AktuelleHaus][hSkin][4] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hStrom",content);
	        HausInfo[AktuelleHaus][hStrom] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hspawnworld",content);
	        HausInfo[AktuelleHaus][hSpawnWorld] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hspawninterior",content);
	        HausInfo[AktuelleHaus][hSpawnInterior] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hlicht",content);
	        HausInfo[AktuelleHaus][hLicht] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hwpin",content);
	        HausInfo[AktuelleHaus][hWPin] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hwdog",content);
	        HausInfo[AktuelleHaus][hWatchdog] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hapart",content);
	        HausInfo[AktuelleHaus][hAppartment] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hlauts",content);
	        HausInfo[AktuelleHaus][hLautsprecher] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hsong",content);
	        format(HausInfo[AktuelleHaus][hRadioLink],128,content);
	        cache_get_field_content(AktuelleHaus,"hwatche",content);
	        HausInfo[AktuelleHaus][hWatchE] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hklingels",content);
	        HausInfo[AktuelleHaus][hKlingelSchild] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hdefi",content);
	        format(HausInfo[AktuelleHaus][hDefinition],128,content);
	        cache_get_field_content(AktuelleHaus,"hgates",content);
	        HausInfo[AktuelleHaus][hGates] = strval(content);
 	       	cache_get_field_content(AktuelleHaus,"hgarage",content);
	        HausInfo[AktuelleHaus][hGarage] = strval(content);
 	      	cache_get_field_content(AktuelleHaus,"hversteigert",content);
	        HausInfo[AktuelleHaus][hVersteigert] = strval(content);
	        cache_get_field_content(AktuelleHaus,"hfirma",content);
	        HausInfo[AktuelleHaus][hFirma] = strval(content);
	        if(HausInfo[AktuelleHaus][hMieter] > HausInfo[AktuelleHaus][hMaxMieter])
	        {
	            HausInfo[AktuelleHaus][hMaxMieter] = HausInfo[AktuelleHaus][hMieter];
	        }
			if(HausInfo[AktuelleHaus][hRent] > 0 && HausInfo[AktuelleHaus][hMaxMieter] == 0)
			{
			    HausInfo[AktuelleHaus][hRent] = 0;
			}
	        if(HausInfo[AktuelleHaus][hStrom] < 21)
	        {
	            HausInfo[AktuelleHaus][hStrom] = 0;
	            HausInfo[AktuelleHaus][hLicht] = 0;
	        }
	        if(HausInfo[AktuelleHaus][hOwned] == 1 && HausInfo[AktuelleHaus][hVersteigert] == 0 && GetServerVarAsInt("port") == 7777)
	        {
	        	format(string,sizeof(string),"SELECT id,lastonline FROM accounts WHERE lastonline <= UNIX_TIMESTAMP(DATE(NOW() - INTERVAL 32 DAY)) AND weti < 1 AND roleplayname = '%s' AND id NOT IN (SELECT user_id FROM ucp_inactive) LIMIT 1",HausInfo[AktuelleHaus][hBesitzer]);
	        	mysql_function_query(Handle,string,true,"CheckHouseTime","d",AktuelleHaus);
			}
			if(HausInfo[AktuelleHaus][hVersteigert] == 1)
			{
			    HausInfo[AktuelleHaus][hLock] = 0;
			}
			if(HausInfo[AktuelleHaus][hLicht] > 2 && HausInfo[AktuelleHaus][hStrom] != -1)
			{
			    HausInfo[AktuelleHaus][hLicht] = 1;
			}
			if(HausInfo[AktuelleHaus][hPreis] <= 0 && HausInfo[AktuelleHaus][hOwned] == 1)
			{
			    HausInfo[AktuelleHaus][hPreis] = 1;
			}
			CreateHouseOnMap(HausInfo[AktuelleHaus][hID]);
	        AktuelleHaus++;
		}
    }
    printf(" <-| [HAUSSYSTEM] Es wurden %i Häuser geladen.", rows);
    return 1;
}