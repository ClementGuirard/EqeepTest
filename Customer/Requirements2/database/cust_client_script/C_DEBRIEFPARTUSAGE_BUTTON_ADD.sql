DELETE FROM CUST_CLIENT_SCRIPT WHERE CLIENT_SCRIPT_ID = 'C_DEBRIEFPARTUSAGE_BUTTON_ADD' AND VERSION_NUMBER = 1;
GO
INSERT INTO CUST_CLIENT_SCRIPT (client_script_id, version_number, name, status, description, notes, script, active, client_script_category, client_script_class, client_script_group, client_script_type, client_type, package_extract_group, package_extract_action, access_group, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm) VALUES('C_DEBRIEFPARTUSAGE_BUTTON_ADD', 1, 'C_DEBRIEFPARTUSAGE_BUTTON_ADD', 'PENDING', NULL, NULL, '//Override the add button to create different transactions (part_usage, part_usage_serial, c_car_stock) 
//2020-07-06, CGEQNL, Creation of script

var pusSerialId = getControlValue(''custom'', ''pus_serial_id'');

if(isNullOrEmptyString(pusSerialId) != true)
{
	if(pusSerialId.length == 10 || pusSerialId.length == 12)
	{
  
	    if(getCurrentTransactionType() == "INSERT")
		{
			var taskId = getCurrentKeys(''task'', ''task_id'');
		
			var requestId = getDBValue("select request_id from task where task_id = ''"+taskId+"''");
			var requestUnitId = getDBValue("select request_unit_id from task where task_id = ''"+taskId+"''");
			var partLineCode = getControlValue("part_usage", "part_line_code");
			var quantity = getControlValue("part_usage", "quantity");
			var userDef9 = getControlValue("part_usage", "user_def9");
			var userDef1 = getControlValue("part_usage", "user_def1");
			var partId = getControlValue("part_usage", "part_id");
			var userDef17 = getControlValue("part_usage", "user_def17");
			var placeIdFrom = getControlValue("part_usage", "place_id_from");
			var location = getControlValue("part_usage", "location");
			var personId = getControlValue("part_usage", "person_id");
			var workDt = getControlValue("part_usage", "work_dt");
			var billingStatus = getControlValue("part_usage", "billing_status");
			var adjQuantity = 0;
			var carStockQuantity = 0;
			carStockQuantity = getDBValue("select quantity from c_car_stock where part_id = ''"+partId+"''");

	
			var pusSerialId = getControlValue("custom", "pus_serial_id");
			var pusUserDef1 = getControlValue("part_usage", "user_def1");
			var pusUserDef2 = "";

			var puId = generatePrimaryKey("part_usage");

			var puTrans = generateDataTransaction("part_usage", "INSERT", "");
				puTrans = addToDataTransaction(puTrans, "pu_id", puId);
				puTrans = addToDataTransaction(puTrans, "task_id", taskId);
				puTrans = addToDataTransaction(puTrans, "request_id", requestId);
				puTrans = addToDataTransaction(puTrans, "request_unit_id", requestUnitId);
				puTrans = addToDataTransaction(puTrans, "part_line_code", partLineCode);
				puTrans = addToDataTransaction(puTrans, "quantity", quantity);
				puTrans = addToDataTransaction(puTrans, "user_def9", userDef9);
				puTrans = addToDataTransaction(puTrans, "user_def1", userDef1);
				puTrans = addToDataTransaction(puTrans, "part_id", partId);
				puTrans = addToDataTransaction(puTrans, "user_def17", userDef17);
				puTrans = addToDataTransaction(puTrans, "place_id_from", placeIdFrom);
				puTrans = addToDataTransaction(puTrans, "location", location);
				puTrans = addToDataTransaction(puTrans, "person_id", personId);
				puTrans = addToDataTransaction(puTrans, "work_dt", workDt);
				puTrans = addToDataTransaction(puTrans, "billing_status", billingStatus);
	
			var isPuTransSaved = saveDataTransaction(puTrans, getMessage("partUsage", "LABEL"));
	
			if(isPuTransSaved)
			{
				goToScreen("C_DebriefPartUsage", true);	
				var pusTrans = generateDataTransaction("part_usage_serial", "INSERT", "");
					pusTrans = addToDataTransaction(pusTrans, "pu_id", puId);
					pusTrans = addToDataTransaction(pusTrans, "serial_id", pusSerialId);
					pusTrans = addToDataTransaction(pusTrans, "user_def1", pusUserDef1);
				var isPusTransSaved = saveDataTransaction(pusTrans, getMessage("PartUsageSerial", "LABEL"));

		
				if(isNullOrEmptyString(carStockQuantity) != true)
				{
					adjQuantity = carStockQuantity - quantity;
				}
			
				if(adjQuantity > 0 && isPusTransSaved)
				{
					alert(stringFormat(''{0}'', adjQuantity));
					var rowId = getDBValue(stringFormat("select metrix_row_id from c_car_stock where part_id = ''{0}''", partId));
					var cStockId = getDBValue(stringFormat("select cstock_id from c_car_stock where part_id = ''{0}''", partId));
					var carStockTrans = generateDataTransaction("c_car_stock", "UPDATE", stringFormat("metrix_row_id = {0}", rowId));
						carStockTrans = addToDataTransaction(carStockTrans, "metrix_row_id", rowId);
						carStockTrans = addToDataTransaction(carStockTrans, "cstock_id", cStockId);
						carStockTrans = addToDataTransaction(carStockTrans, "quantity", adjQuantity);
						carStockTrans = addToDataTransaction(carStockTrans, "user_def_num1", puId);
					saveDataTransaction(carStockTrans, getMessage("CCarStock", "LABEL"));

				}
				else
				{
					alert("negative transaction!");
				}
		
		
			}
	
	
		}
		else
		{
			alert("not the good place");
		}
	}
	else
	{
		alert("wrong new part serial_id");	  
	}
	
}
else
{
	alert("wrong new part serial_id");	  
}', 'Y', NULL, NULL, NULL, NULL, 'MOBILE_ONLY', NULL, 'EXTRACT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-07-09T10:31:15', 126)), '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-07-01T13:25:07', 126)));
GO

