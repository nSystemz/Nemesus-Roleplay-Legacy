/*
!!BITTE SORGFÄLTIG MIT DIESER DATEI UMGEHEND!!
Erstellt für den Nemesus-Roleplay.net 

ERSETZT KEINE DATENBANKEN! Es erweitert alle Daten entsprechend
*/

stock CreateUpdateTables(){
	new query[4000];
	strcat(query, "ALTER TABLE accounts ADD COLUMN (`tachoopt` int(2) NOT NULL, `spielminuten` int(2) NOT NULL)");
	mysql_function_query(Handle,query,false,"","");
	strdel(query,0,sizeof(query));
	strcat(query, "ALTER TABLE einstellungen ADD COLUMN (`drogensystem` int(2) NOT NULL DEFAULT 0)");
	mysql_function_query(Handle,query,false,"","");
	strdel(query,0,sizeof(query));
	strcat(query, "CREATE TABLE IF NOT EXISTS `charakterantrag` (`id` int(2) NOT NULL, `accid` int (2) NOT NULL, `name` varchar(124) NOT NULL, `alter` int(2) NOT NULL, `timestamp` varchar(24) NOT NULL)");
	mysql_function_query(Handle,query,false,"","");
	strdel(query,0,sizeof(query));
	strcat(query, "ALTER TABLE `charakterantrag` ADD PRIMARY KEY (`id`)");
	mysql_function_query(Handle,query,false,"","");
	strdel(query,0,sizeof(query));
	strcat(query, "ALTER TABLE `fahrzeuge` ADD COLUMN (`f_delay` int(2) NOT NULL DEFAULT 0)");
	mysql_function_query(Handle,query,false,"","");
	strdel(query,0,sizeof(query));
	return 1;
}