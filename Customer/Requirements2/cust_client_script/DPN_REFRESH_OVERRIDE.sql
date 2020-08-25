DELETE FROM CUST_CLIENT_SCRIPT WHERE CLIENT_SCRIPT_ID = 'DPN_REFRESH_OVERRIDE' AND VERSION_NUMBER = 1;
GO
INSERT INTO CUST_CLIENT_SCRIPT (client_script_id, version_number, name, status, description, notes, script, active, client_script_category, client_script_class, client_script_group, client_script_type, client_type, package_extract_group, package_extract_action, access_group, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm) VALUES('DPN_REFRESH_OVERRIDE', 1, 'DPN_REFRESH_OVERRIDE', 'PENDING', NULL, NULL, 'var navigatedFromLinkedScreen = getFromCache("NavigatedFromLinkedScreen");

if (getCurrentTransactionType() == "INSERT") {
	var personId = getUserInfo("PersonID");
	var placeFrom, locFrom, placeTo, locTo = "";
	placeFrom = ''N-829-DT'';
	locFrom = ''GOOD'';
	
	/*
	var personPlaceResult = getDBValues(stringFormat("select max(team_member.team_id), team.user_def4, team.user_def5 from team_member join team on team.team_id = team_member.team_id where person_id = ''{0}'' GROUP BY team.user_def4, team.user_def5 ", personId));
	if (personPlaceResult != null) {
		var row = personPlaceResult[0];
		if (row != null) {
			placeFrom = row["user_def4"];
			locFrom = row["user_def4"];
		}
	}
	*/
	/*
	var personPlaceResult = getDBValues(stringFormat("select place_id, location from person_place where place_relationship = ''FOR_STOCK'' and person_id = ''{0}''", personId));
	if (personPlaceResult != null) {
		var row = personPlaceResult[0];
		if (row != null) {
			placeTo = row["place_id"];
			locTo = row["location"];
		}
	}
	*/
	/*
	var placeXrefResult = getDBValues(stringFormat("select related_place_id, related_location from place_xref where place_relationship = ''FOR_STOCK'' and place_id = ''{0}''", placeTo));
	if (placeXrefResult != null) {
		var xrefRow = placeXrefResult[0];
		if (xrefRow != null) {
			placeFrom = xrefRow["related_place_id"];
			locFrom = xrefRow["related_location"];
		}		
	}
	*/
	
	/*var query = getDBValues(stringFormat("select team.user_def4 as place from team join team_member on team.team_id = team_member.team_id where person_id = ''{0}'' UNION ALL select team.user_def5 as place from team join team_member on team.team_id = team_member.team_id where person_id = ''{0}''", personId));
	
	var placeFromList = populateListFromQuery(''part_need'', ''place_id_from'', query, true);*/
	
	
	setControlValue("part_need", "place_id_from", placeFrom);
	setControlValue("part_need", "location_from", locFrom);
	setControlValue("part_need", "place_id_to", placeTo);
	setControlValue("part_need", "location_to", locTo);	
	
}else if((getCurrentTransactionType() == "UPDATE") || (isNullOrEmptyString(navigatedFromLinkedScreen) == false)) {
	setControlVisibility("custom", "service_bom", false);
}', 'Y', NULL, NULL, NULL, NULL, 'MOBILE_ONLY', NULL, 'EXTRACT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-07-06T16:16:12', 126)), '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-30T14:26:42', 126)));
GO

