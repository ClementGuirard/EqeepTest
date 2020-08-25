DELETE FROM MM_PROCESS_DEF WHERE TABLE_NAME = 'PRODUCT_STRUCTURE';
GO
INSERT INTO MM_PROCESS_DEF (table_name, owner, owner_identifier, ownership_query, initial_query, refresh_query, related_info_query, delivery_method, frequency, process_status, active, comments, broadcast_to_all_users, last_run_dttm, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm, package_extract_group, package_extract_action) VALUES('PRODUCT_STRUCTURE', 'N', NULL, NULL, '<hierarchy_select return_only_requested_attrs="true" max_rows="50000">
  <primary_table>product_structure</primary_table>
  <attrs>
    <attr>product_structure.product_structure_id</attr>
    <attr>product_structure.parent_id</attr>
    <attr>product_structure.product_id</attr>
    <attr>product_structure.serial_id</attr>
    <attr>product_structure.model_id</attr>
    <attr>product_structure.part_id</attr>
    <attr>product_structure.quantity</attr>
  </attrs>
  <from>
    <table>product_structure_view</table>
  </from>
</hierarchy_select>', NULL, NULL, 'BATCH_DELTA', 24, 'MODIFIED', 'Y', 'This product structure temporary does not have data constraint', 'N', DATEADD(MILLISECOND,0, convert(datetime,'2020-07-13T14:56:58', 126)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-24T13:38:36', 126)), '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-24T13:37:43', 126)), NULL, 'EXTRACT');
GO

