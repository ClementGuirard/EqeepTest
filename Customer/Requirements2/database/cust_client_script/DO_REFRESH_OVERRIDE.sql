DELETE FROM CUST_CLIENT_SCRIPT WHERE CLIENT_SCRIPT_ID = 'DO_REFRESH_OVERRIDE' AND VERSION_NUMBER = 1;
GO
INSERT INTO CUST_CLIENT_SCRIPT (client_script_id, version_number, name, status, description, notes, script, active, client_script_category, client_script_class, client_script_group, client_script_type, client_type, package_extract_group, package_extract_action, access_group, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm) VALUES('DO_REFRESH_OVERRIDE', 1, 'DO_REFRESH_OVERRIDE', 'PENDING', NULL, NULL, 'var taskId = getCurrentKeys("task", "task_id");
var productId = getDBValue("select product_id from task where task_id = ''"+taskId+"''");
var contractId = getControlValue("contract", "contract_id"); 
var gotVal = false;
var contactSequence = "";
var firstName = "";
var	lastName = "";
var	fullName = "";
var	phone = "";
var	mobilePhone = "";
var	emailAddress = "";
var coverageEndDt = "";
var coverageStartDt = "";
var pcovCode = "";
var npcoveCode = "";

var innerSelect = stringFormat("select min(sequence) from task_contact where sequence > 0 and task_id = {0}", taskId);
var query = "select contact_sequence, last_name, first_name, phone, mobile_phone, email_address from task_contact where task_contact.sequence in ({0})";

var selectedValues = getDBValues(stringFormat(query, innerSelect));
if (selectedValues != null) {
	var testResult = selectedValues[0];
	if (testResult != null) {
		gotVal = true;
	}
}

if (gotVal == false) {
	innerSelect = stringFormat("select max(sequence) from task_contact where sequence < 0 and task_id = {0}", taskId);
	selectedValues = getDBValues(stringFormat(query, innerSelect));
}

if (selectedValues != null) {
	var result = selectedValues[0];
	if (result != null) {
		contactSequence = result[''contact_sequence''];
		firstName = result[''first_name''];
		lastName = result[''last_name''];
		fullName =  firstName + '' '' + lastName;
		phone = result[''phone''];
		mobilePhone = result[''mobile_phone''];
		emailAddress = result[''email_address''];
	}
}

var queryCtrPr = "select contr_product.coverage_end_dt, contr_product.coverage_start_dt, contr_product.pcov_code, contr_product.npcov_code from contr_product where contract_id = ''"+contractId+"'' and product_id = ''"+productId+"''";
var contrProductValues = getDBValues(queryCtrPr);

if(contrProductValues != null)
{
	var contrProductResult = contrProductValues[0];
	if(contrProductResult != null)
	{
		coverageEndDt = contrProductResult["coverage_end_dt"];
		coverageStartDt = contrProductResult["coverage_start_dt"];
		pcovCode = contrProductResult["pcov_code"];
		npcovCode = contrProductResult["npcov_code"];
		
		setControlValue("custom", "COVERAGE_END_DT", coverageEndDt);
		setControlValue("custom", "COVERAGE_START_DT", coverageStartDt);
		setControlValue("custom", "PCOV_CODE", pcovCode);
		setControlValue("custom", "NPCOVE_CODE", npcovCode);
	}
}

setControlValue("task_contact", "contact_sequence", contactSequence);
setControlValue("task_contact", "first_name", firstName);
setControlValue("task_contact", "last_name", lastName);
setControlValue("custom", "full_name", fullName);
setControlValue("task_contact", "phone", phone);
setControlValue("task_contact", "mobile_phone", mobilePhone);
setControlValue("task_contact", "email_address", emailAddress);', 'Y', NULL, NULL, NULL, NULL, 'MOBILE_ONLY', NULL, 'EXTRACT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-24T09:21:55', 126)), '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-22T14:38:52', 126)));
GO

