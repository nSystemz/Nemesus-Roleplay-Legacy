/*
	wbb4 natives:
		native WBB_AddUser(Username[], Password[], Email[], playerid = -1, index = 0)
		native WBB_CheckPassword(UserID, Password[], playerid = -1, index = 0)
		
		native WBB_AddToGroups(UserID, GroupIDs[], playerid = -1, index = 0)
		native WBB_RemoveFromGroups(UserID, GroupIDs[], playerid = -1, index = 0)
		
		native WBB_BanUsername(Username[], Reason[] = "", BanTime = 0, playerid = -1, index = 0)
		native WBB_BanUserID(UserID, Reason[] = "", BanTime = 0, playerid = -1, index = 0)
		native WBB_UnbanUsername(Username[], playerid = -1, index = 0)
		native WBB_UnbanUserID(UserID, playerid = -1, index = 0)
		
		native WBB_EnableUsername(Username[], playerid = -1, index = 0)
		native WBB_EnableUserID(UserID, playerid = -1, index = 0)
		native WBB_DisableUsername(Username[], playerid = -1, index = 0)
		native WBB_DisableUserID(UserID, playerid = -1, index = 0)
		
		native WBB_AddPost(Username[], ThreadID, Subject[], Message[], enableBBCodes = 1, enableHtml = 0, enableSmilies = 1, showSignature = 1, isDisabled = 0, isGuest = 0, playerid = -1, index = 0)
	    native WBB_AddPostUserID(UserID, ThreadID, Subject[], Message[], enableBBCodes = 1, enableHtml = 0, enableSmilies = 1, showSignature = 1, isDisabled = 0, isGuest = 0, playerid = -1, index = 0)
		
		WBB_AddThread(Username[], BoardID, Subject[], Message[], enableBBCodes = 1, enableHtml = 0, enableSmilies = 1, showSignature = 1, isDisabled = 0, isGuest = 0, playerid = -1, index = 0)
	    WBB_AddThreadUserID(UserID, BoardID, Subject[], Message[], enableBBCodes = 1, enableHtml = 0, enableSmilies = 1, showSignature = 1, isDisabled = 0, isGuest = 0, playerid = -1, index = 0)
		
		native WBB_GetUserID(Username[], playerid = -1, index = 0)
		native WBB_IsForbiddenUsername(Username[], playerid = -1, index = 0)

	other natives:
		native pWBB4_CheckUpdate();

	php natives:
		native PHP_Hash(String[], Algo[], playerid = -1, index = 0)
		native PHP_CheckEmail(Email[], playerid = -1, index = 0);
		
	callbacks:
		native pWBB4_Callback(action, index, playerid, status, response[]);
*/

// pWBB4 allready loaded?
#if defined _pWBB4_included
    #endinput
#endif
#define _pWBB4_included

// all includes loaded?
#if !defined _samp_included
    #include <a_samp>
#endif
#if !defined HTTP_GET
	#include <a_http>
#endif
#if !defined sscanf
	#error sscanf wurde anscheinend nicht gefunden.
#endif

// check wbb key
#if !defined pWBB_CONNECT_KEY
	#error Bitte definiere 'pWBB_CONNECT_KEY' mit einem Key. Empfehlenswert ist ein komplizierter Key, dieser wird in der install.php angezeigt.
#endif
#if !defined pWBB_URL
	#error Bitte definiere 'pWBB_URL' mit der URL vom Forum. Beispiele: 'breadfish.de', 'forum.sa-mp.com' (nur die TLD/IP, ohne www)
#endif

// Settings

#define pWBB_URL_LENGTH	512

// Actions

#define pWBB4_ACTION_PHPHASH				1
#define pWBB4_ACTION_PHPCHECKEMAIL			2
#define pWBB4_ACTION_WBBADDUSER				3
#define pWBB4_ACTION_WBBCHECKPASSWORD		4
#define pWBB4_ACTION_WBBADDTOGROUPS			5
#define pWBB4_ACTION_WBBREMOVEFROMGROUPS	6
#define pWBB4_ACTION_WBBBANUSERNAME			7
#define pWBB4_ACTION_WBBBANUSERID			8
#define pWBB4_ACTION_WBBUNBANUSERNAME		9
#define pWBB4_ACTION_WBBUNBANUSERID			10
#define pWBB4_ACTION_WBBENABLEUSERNAME		11
#define pWBB4_ACTION_WBBENABLEUSERID		12
#define pWBB4_ACTION_WBBDISABLEUSERNAME		13
#define pWBB4_ACTION_WBBDISABLEUSERID		14
#define pWBB4_ACTION_WBBADDPOST				15
#define pWBB4_ACTION_WBBADDPOSTUSERID		16
#define pWBB4_ACTION_WBBGETUSERID           17
#define pWBB4_ACTION_WBBISFORBIDDENUSERNAME 18
#define pWBB4_ACTION_CHECKUPDATE            19

// OTHER Functions

stock pWBB4_CheckUpdate() {
	return pWBB4_SendRequest(pWBB4_ACTION_CHECKUPDATE, "", -1, 0);
}

// PHP Functions

stock PHP_Hash(string[], algo[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=%s&b=%s", algo, pWBB4_urlencode(string));
	return pWBB4_SendRequest(pWBB4_ACTION_PHPHASH, str, playerid, index);
}
stock PHP_CheckEmail(Email[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=%s", pWBB4_urlencode(Email));
	return pWBB4_SendRequest(pWBB4_ACTION_PHPCHECKEMAIL, str, playerid, index);
}

// WBB4 Functions

stock WBB_AddUser(Username[], Password[], Email[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=%s&b=%s&c=%s", pWBB4_urlencode(Username), pWBB4_urlencode(Password), pWBB4_urlencode(Email));
	return pWBB4_SendRequest(pWBB4_ACTION_WBBADDUSER, str, playerid, index);
}
stock WBB_CheckPassword(UserID, Password[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=%d&b=%s", UserID, pWBB4_urlencode(Password));
	return pWBB4_SendRequest(pWBB4_ACTION_WBBCHECKPASSWORD, str, playerid, index);
}
// and WBB_CheckPasswordByUsername?
stock WBB_AddToGroups(UserID, GroupIDs[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=%d&b=%s", UserID, pWBB4_urlencode(GroupIDs));
	return pWBB4_SendRequest(pWBB4_ACTION_WBBADDTOGROUPS, str, playerid, index);
}
stock WBB_RemoveFromGroups(UserID, GroupIDs[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=%d&b=%s", UserID, pWBB4_urlencode(GroupIDs));
	return pWBB4_SendRequest(pWBB4_ACTION_WBBREMOVEFROMGROUPS, str, playerid, index);
}
stock WBB_BanUsername(Username[], Reason[] = "", BanTime = 0, playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=1&b=%s&c=%s&d=%d", pWBB4_urlencode(Username), pWBB4_urlencode(Reason), BanTime);
	return pWBB4_SendRequest(pWBB4_ACTION_WBBBANUSERNAME, str, playerid, index);
}
stock WBB_BanUserID(UserID, Reason[] = "", BanTime = 0, playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=2&b=%d&c=%s&d=%d", UserID, pWBB4_urlencode(Reason), BanTime);
	return pWBB4_SendRequest(pWBB4_ACTION_WBBBANUSERID, str, playerid, index);
}
stock WBB_UnbanUsername(Username[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=1&b=%s", Username);
	return pWBB4_SendRequest(pWBB4_ACTION_WBBUNBANUSERNAME, str, playerid, index);
}
stock WBB_UnbanUserID(UserID, playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=2&b=%d", UserID);
	return pWBB4_SendRequest(pWBB4_ACTION_WBBUNBANUSERID, str, playerid, index);
}
stock WBB_EnableUsername(Username[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=1&b=1&c=%s", Username);
	return pWBB4_SendRequest(pWBB4_ACTION_WBBENABLEUSERNAME, str, playerid, index);
}
stock WBB_EnableUserID(UserID, playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=2&b=1&c=%d", UserID);
	return pWBB4_SendRequest(pWBB4_ACTION_WBBENABLEUSERID, str, playerid, index);
}
stock WBB_DisableUsername(Username[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=1&b=2&c=%s", Username);
	return pWBB4_SendRequest(pWBB4_ACTION_WBBDISABLEUSERNAME, str, playerid, index);
}
stock WBB_DisableUserID(UserID, playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=2&b=2&c=%d", UserID);
	return pWBB4_SendRequest(pWBB4_ACTION_WBBDISABLEUSERID, str, playerid, index);
}

stock WBB_AddPost(Username[], ThreadID, Subject[], Message[], enableBBCodes = 1, enableHtml = 0, enableSmilies = 1, showSignature = 1, isDisabled = 0, isGuest = 0, playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=%s&b=%d&c=%s&d=%s&e=%d&f=%d&g=%d&h=%d&i=1&j=%d&k=%d", pWBB4_urlencode(Username), ThreadID, pWBB4_urlencode(Subject), pWBB4_urlencode(Message), enableBBCodes, enableHtml, enableSmilies, showSignature, isDisabled, isGuest);
	return pWBB4_SendRequest(pWBB4_ACTION_WBBADDPOST, str, playerid, index);
}
stock WBB_AddPostUserID(UserID, ThreadID, Subject[], Message[], enableBBCodes = 1, enableHtml = 0, enableSmilies = 1, showSignature = 1, isDisabled = 0, isGuest = 0, playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=%d&b=%d&c=%s&d=%s&e=%d&f=%d&g=%d&h=%d&i=2&j=%d&k=%d", UserID, ThreadID, pWBB4_urlencode(Subject), pWBB4_urlencode(Message), enableBBCodes, enableHtml, enableSmilies, showSignature, isDisabled, isGuest);
	return pWBB4_SendRequest(pWBB4_ACTION_WBBADDPOSTUSERID, str, playerid, index);
}

stock WBB_GetUserID(Username[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=%s", pWBB4_urlencode(Username));
	return pWBB4_SendRequest(pWBB4_ACTION_WBBGETUSERID, str, playerid, index);
}

stock WBB_IsForbiddenUsername(Username[], playerid = -1, index = 0) {
	new str[pWBB_URL_LENGTH];
	format(str,sizeof str, "a=%s", pWBB4_urlencode(Username));
	return pWBB4_SendRequest(pWBB4_ACTION_WBBISFORBIDDENUSERNAME, str, playerid, index);
}


// include functions + callbacks

stock pWBB4_SendRequest(action, postData[], playerid = 0, index = 0) {
	new url[pWBB_URL_LENGTH];
	format(url, pWBB_URL_LENGTH, #pWBB_URL"/samp.php?action=%d&playerid=%d&index=%d&key="#pWBB_CONNECT_KEY, action, playerid, index);
	#if defined pWBB_DEBUG
		printf("[pWBB4/HTTP Debug] URL: %s / Post: %s",url, postData);
	#endif
    return HTTP(action, HTTP_POST, url, postData, "pWBB4_Response");
}

forward pWBB4_Response(action, response, data[]);
public pWBB4_Response(action, response, data[]) {
	#if defined pWBB_DEBUG
		printf("[pWBB4/Debug] Response (%d): %d / %s", response, action, data);
	#endif
	if ( response == 200 ) {
		new index, playerid, status, res[256];
		if ( !sscanf(data, "ddds", index, playerid, status, res) ) {
			CallRemoteFunction("pWBB4_Callback", "dddds", action, index, playerid, status, res);
		} else {
			CallRemoteFunction("pWBB4_Callback", "dddds", action, -1, -1, -1, "null");
		}
	} else {
		CallRemoteFunction("pWBB4_Callback", "dddds", action, -1, -1, -1, "null");
	}
}

/**
*  Url encodes a specific string (by DracoBlue)
*/
stock pWBB4_urlencode(string[]) {
    new ret[128];
    ret[0] = 0;
    new i,p,s;
    while (string[i] != 0) {
		if ( string[i] >= 128 ) {
			i++;
			continue;
		}
        if  ( (string[i] >= 'A' && string[i] <='Z') || (string[i] >= 'a' && string[i] <='z') || (string[i] >= '0' && string[i] <='9') || (string[i] == '-') || (string[i] == '_') || (string[i] == '.') ) { ret[p] = string[i]; }
		else {
			ret[p] = '%';
			p++;
			s = (string[i] % 16);
			ret[p+1] = (s>9) ? (55+s) : (48+s);
			s = floatround((string[i] - s)/16);
			ret[p] = (s>9) ? (55+s) : (48+s);
			p++;
		}
        p++;
        i++;
    }
    return ret;
}