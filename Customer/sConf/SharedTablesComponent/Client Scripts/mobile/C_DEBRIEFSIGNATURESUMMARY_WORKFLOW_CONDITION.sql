DELETE FROM CUST_CLIENT_SCRIPT WHERE CLIENT_SCRIPT_ID = 'C_DEBRIEFSIGNATURESUMMARY_WORKFLOW_CONDITION' AND VERSION_NUMBER = 1;
GO
INSERT INTO CUST_CLIENT_SCRIPT (client_script_id, version_number, name, status, description, notes, script, active, client_script_category, client_script_class, client_script_group, client_script_type, client_type, package_extract_group, package_extract_action, access_group, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm) VALUES('C_DEBRIEFSIGNATURESUMMARY_WORKFLOW_CONDITION', 1, 'C_DEBRIEFSIGNATURESUMMARY_WORKFLOW_CONDITION', 'PENDING', NULL, NULL, 'if(getCurrentScreenName() == "C_DebriefTaskText")
{
	return false;
}
alert("testGithub");
var taskId = getCurrentKeys(''task'', ''task_id'');
var taskStatus = getDBValue("select task.task_status from task where task_id = ''"+taskId+"''");
	
var customerSignature = getDBValue("select max(task_id) from task_attachment join attachment on attachment.attachment_id = task_attachment.attachment_id where attachment.attachment_type = ''SIGNATURE'' and attachment.attachment_description = ''Customer Signature'' and task_id = ''"+taskId+"''");
var numberTaskNotes = getDBValue("select count(task_id) from task_text where text_line_code =''SOLUTION'' and task_id = ''"+taskId+"''");


if(isNullOrEmptyString(customerSignature) && numberTaskNotes < 1)
{
	alert(getMessage(''CDebriefSummaryWorkflowInfo'',''INFORMATION''));
	
	return false;
}

if(taskStatus != ''WORKSTOP'')
{
	alert(getMessage(''CDebriefSummaryWorkflowInfo2'',''INFORMATION''));
	return false;
}', 'Y', NULL, NULL, NULL, NULL, 'MOBILE_ONLY', NULL, 'EXTRACT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2021-07-13T15:38:51', 126)), '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-09-25T17:35:32', 126)));
GO

--Test second developer 