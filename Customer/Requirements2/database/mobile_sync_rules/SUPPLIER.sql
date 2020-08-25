DELETE FROM MM_PROCESS_DEF WHERE TABLE_NAME = 'SUPPLIER';
GO
INSERT INTO MM_PROCESS_DEF (table_name, owner, owner_identifier, ownership_query, initial_query, refresh_query, related_info_query, delivery_method, frequency, process_status, active, comments, broadcast_to_all_users, last_run_dttm, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm, package_extract_group, package_extract_action) VALUES('SUPPLIER', 'N', NULL, NULL, '<hierarchy_select return_only_requested_attrs="true" max_rows=''50000''>
  <primary_table>SUPPLIER</primary_table>
  <from>
    <table>SUPPLIER</table>
  </from>
  <attrs>
    <attr>SUPPLIER.*</attr>
  </attrs>
</hierarchy_select>', NULL, NULL, 'BATCH_DELTA', 24, 'MODIFIED', 'N', NULL, 'N', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-18T17:46:21', 126)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-19T11:19:38', 126)), 'ELIN', DATEADD(MILLISECOND,0, convert(datetime,'2016-04-18T20:45:14', 126)), NULL, 'EXTRACT');
GO

