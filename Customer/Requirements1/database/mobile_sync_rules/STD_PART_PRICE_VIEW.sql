DELETE FROM MM_PROCESS_DEF WHERE TABLE_NAME = 'STD_PART_PRICE_VIEW';
GO
INSERT INTO MM_PROCESS_DEF (table_name, owner, owner_identifier, ownership_query, initial_query, refresh_query, related_info_query, delivery_method, frequency, process_status, active, comments, broadcast_to_all_users, last_run_dttm, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm, package_extract_group, package_extract_action) VALUES('STD_PART_PRICE_VIEW', 'N', NULL, NULL, '<hierarchy_select return_only_requested_attrs="true" max_rows="50000">
  <primary_table>STD_PART_PRICE_VIEW</primary_table>
  <from>
    <table>STD_PART_PRICE_VIEW</table>
  </from>
  <attrs>
    <attr>STD_PART_PRICE_VIEW.FIN_LIST_SEQUENCE</attr>
    <attr>STD_PART_PRICE_VIEW.LIST_PRICE</attr>
    <attr>STD_PART_PRICE_VIEW.COLUMN_1</attr>
    <attr>STD_PART_PRICE_VIEW.EFFECTIVE_DT</attr>
    <attr>STD_PART_PRICE_VIEW.CURRENCY</attr>
  </attrs>
</hierarchy_select>', NULL, NULL, 'BATCH_ALL', 24, 'MODIFIED', 'N', NULL, 'N', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-18T17:46:20', 126)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-19T11:19:19', 126)), 'METRIX', DATEADD(MILLISECOND,0, convert(datetime,'2019-06-02T19:45:54', 126)), NULL, 'EXTRACT');
GO

