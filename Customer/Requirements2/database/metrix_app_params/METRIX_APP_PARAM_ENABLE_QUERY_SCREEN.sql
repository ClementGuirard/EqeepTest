DELETE FROM METRIX_APP_PARAMS WHERE PARAM_NAME = 'ENABLE_QUERY_SCREEN';
GO
INSERT INTO METRIX_APP_PARAMS (param_name, param_value, param_desc, ui_param, param_category, desc_message_id, param_note, package_extract_group, package_extract_action, integration_name, modified_by, modified_dttm, created_by, created_dttm, encrypted, regex_value, error_message_id) VALUES('ENABLE_QUERY_SCREEN', 'Y', 'Determines whether the Query screen can be accessed in FSM Mobile. Values are Y (yes) and N (no).', NULL, 'MOBILE', 'EnableQueryScreen', NULL, NULL, 'EXTRACT', NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-09T17:51:52', 126)), NULL, NULL, NULL, '^([YNyn])$', 'AppParamAllowsValueOfYorN');
GO

