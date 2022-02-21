/* Teamspeak3 Connector
 * Version 1.3
 * made by maddinat0r
 */

#if defined tsconnector_included
	#endinput
#endif
#define tsconnector_included


enum TSC_CHANNELTYPE
{
	INVALID,
	TEMPORARY,
	SEMI_PERMANENT,
	PERMANENT
};

enum TSC_KICKTYPE
{
	INVALID,
	CHANNEL,
	SERVER
};

enum TSC_CHANNEL_QUERYDATA
{
	INVALID,
	CHANNEL_TOPIC, //string
	CHANNEL_DESCRIPTION, //string
	CHANNEL_CODEC, //int
	CHANNEL_CODEC_QUALITY, //int
	CHANNEL_FORCED_SILENCE, //int
	CHANNEL_ICON_ID, //int
	CHANNEL_CODEC_IS_UNENCRYPTED, //int
	CHANNEL_SECONDS_EMPTY //int
};

enum TSC_CLIENT_QUERYDATA
{
	INVALID,
	CLIENT_NICKNAME, //string
	CLIENT_VERSION, //string
	CLIENT_PLATFORM, //string
	CLIENT_INPUT_MUTED, //int
	CLIENT_OUTPUT_MUTED, //int
	CLIENT_INPUT_HARDWARE, //int
	CLIENT_OUTPUT_HARDWARE, //int
	CLIENT_CHANNEL_GROUP_ID, //int
	CLIENT_SERVER_GROUPS, //string (list of numbers, separated by a comma)
	CLIENT_FIRSTCONNECTED, //int (UTC timestamp of first connection)
	CLIENT_LASTCONNECTED, //int (UTC timestamp of last connection)
	CLIENT_TOTALCONNECTIONS, //int
	CLIENT_AWAY, //int
	CLIENT_AWAY_MESSAGE, //string
	CLIENT_AVATAR, //string
	CLIENT_TALK_POWER, //int
	CLIENT_TALK_REQUEST, //int
	CLIENT_TALK_REQUEST_MSG, //string
	CLIENT_IS_TALKER, //int
	CLIENT_IS_PRIORITY_SPEAKER, //int
	CLIENT_DESCRIPTION, //string
	CLIENT_IS_CHANNEL_COMMANDER, //int
	CLIENT_ICON_ID, //int
	CLIENT_COUNTRY, //string
	CLIENT_IDLE_TIME, //int (seconds)
	CLIENT_IS_RECORDING //int
};

enum /*teamspeak channel codecs*/ 
{
	CODEC_SPEEX_NARROWBAND = 0, // 0: speex narrowband (mono, 16bit, 8kHz)
	CODEC_SPEEX_WIDEBAND, // 1: speex wideband (mono, 16bit, 16kHz)
	CODEC_SPEEX_ULTRAWIDEBAND, // 2: speex ultra-wideband (mono, 16bit, 32kHz)
	CODEC_CELT_MONO, // 3: celt mono (mono, 16bit, 48kHz)
	CODEC_OPUS_VOICE, //4: opus voice
	CODEC_OPUS_MUSIC //5: opus music
};

enum TSC_ERROR_TYPE
{
	INVALID,
	CONNECTION_ERROR,
	TEAMSPEAK_ERROR,
	CALLBACK_ERROR
};


//server functions
native TSC_Connect(user[], pass[], hostname[], port = 9987, serverquery_port = 10011);
native TSC_Disconnect();
native TSC_ChangeNickname(nickname[]);
native TSC_SendServerMessage(msg[]);


//data query functions
native TSC_QueryChannelData(channelid, TSC_CHANNEL_QUERYDATA:data, const callback[], const format[] = "", {Float, _}:...);
native TSC_QueryClientData(clientid, TSC_CLIENT_QUERYDATA:data, const callback[], const format[] = "", {Float, _}:...);
native TSC_GetQueriedData(dest[], max_len = sizeof(dest));
native TSC_GetQueriedDataAsInt();


//channel functions
native TSC_CreateChannel(channelname[], TSC_CHANNELTYPE:type = TEMPORARY, maxusers = -1, parentchannelid = -1, upperchannelid = -1, talkpower = 0);
native TSC_DeleteChannel(channelid);
native TSC_GetChannelIdByName(channelname[]);
native TSC_IsValidChannel(channelid);
native TSC_SetChannelName(channelid, channelname[]);
native TSC_GetChannelName(channelid, dest[], maxlen = sizeof(dest));
native TSC_SetChannelDescription(channelid, desc[]);
native TSC_SetChannelType(channelid, TSC_CHANNELTYPE:type);
native TSC_CHANNELTYPE:TSC_GetChannelType(channelid);
native TSC_SetChannelPassword(channelid, password[]);
native TSC_HasChannelPassword(channelid);
native TSC_SetChannelRequiredTP(channelid, talkpower);
native TSC_GetChannelRequiredTP(channelid);
native TSC_SetChannelUserLimit(channelid, maxusers);
native TSC_GetChannelUserLimit(channelid);
native TSC_SetChannelParentId(channelid, parentchannelid);
native TSC_GetChannelParentId(channelid);
native TSC_SetChannelOrderId(channelid, upperchannelid);
native TSC_GetChannelOrderId(channelid);
native TSC_GetDefaultChannelId();


//client functions
native TSC_GetClientIdByUid(uid[]);
native TSC_GetClientIdByIpAddress(ip[]);

native TSC_GetClientUid(clientid, dest[], maxlen = sizeof(dest));
native TSC_GetClientDatabaseId(clientid);
native TSC_GetClientChannelId(clientid);
native TSC_GetClientIpAddress(clientid, dest[], maxlen = sizeof(dest));

native TSC_KickClient(clientid, TSC_KICKTYPE:kicktype, reasonmsg[] = "");
native TSC_BanClient(clientuid[], seconds, reasonmsg[]);
native TSC_MoveClient(clientid, channelid);

native TSC_SetClientChannelGroup(clientid, groupid, channelid);
native TSC_AddClientToServerGroup(clientid, groupid);
native TSC_RemoveClientFromServerGroup(clientid, groupid);
native TSC_SetClientTalkerStatus(clientid, bool:status);
native TSC_SetClientDescription(clientid, const description[]);

native TSC_PokeClient(clientid, msg[]);
native TSC_SendClientMessage(clientid, msg[]);




//server callbacks
forward TSC_OnConnect();
forward TSC_OnError(TSC_ERROR_TYPE:error_type, error_id, const error_msg[]);

//channel callbacks
forward TSC_OnChannelCreated(channelid);
forward TSC_OnChannelDeleted(channelid);
forward TSC_OnChannelReorder(channelid, orderid);
forward TSC_OnChannelMoved(channelid, parentid, orderid);
forward TSC_OnChannelRenamed(channelid, name[]);
forward TSC_OnChannelPasswordEdited(channelid, bool:ispassworded, bool:passwordchanged);
forward TSC_OnChannelTypeChanged(channelid, TSC_CHANNELTYPE:type);
forward TSC_OnChannelSetDefault(channelid);
forward TSC_OnChannelMaxClientsChanged(channelid, maxclients);
forward TSC_OnChannelRequiredTPChanged(channelid, talkpower);

//client callbacks
forward TSC_OnClientConnect(clientid, nickname[]);
forward TSC_OnClientDisconnect(clientid, reasonid, reasonmsg[]);
forward TSC_OnClientMoved(clientid, to_channelid, invokerid);
forward TSC_OnClientServerText(clientid, nickname[], msg[]);
forward TSC_OnClientPrivateText(from_clid, from_nickname[], to_clid, msg[]);
