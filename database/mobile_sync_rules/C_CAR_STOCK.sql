DELETE FROM MM_PROCESS_DEF WHERE TABLE_NAME = 'C_CAR_STOCK';
GO
INSERT INTO MM_PROCESS_DEF (table_name, owner, owner_identifier, ownership_query, initial_query, refresh_query, related_info_query, delivery_method, frequency, process_status, active, comments, broadcast_to_all_users, last_run_dttm, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm, package_extract_group, package_extract_action) VALUES('C_CAR_STOCK', 'N', NULL, NULL, '<hierarchy_select return_only_requested_attrs="true" max_rows="1000">
  <primary_table>c_car_stock</primary_table>
  <attrs>
    <attr>c_car_stock.cstock_id</attr>
<attr>c_car_stock.access_group</attr>
<attr>c_car_stock.plant</attr>
<attr>c_car_stock.place_id</attr>
<attr>c_car_stock.part_id</attr>
<attr>c_car_stock.quantity</attr>
<attr>c_car_stock.uom</attr>
<attr>c_car_stock.location</attr>
  </attrs>
  <from>
    <table>c_car_stock</table>
    <table>person_place</table>
    <table>person</table>
  </from>
  <where>
    <data_constraint>
      <constraint>
        <left_operand>person_place.place_relationship</left_operand>
        <operator>eq</operator>
        <right_operand>FOR_STOCK</right_operand>
      </constraint>
      <constraint>
        <left_operand>person.person_id</left_operand>
        <operator>eq</operator>
        <right_operand>{PERSON_ID}</right_operand>
      </constraint>
    </data_constraint>
    <join_constraint>
      <constraint>
        <left_operand>person_place.place_id</left_operand>
        <operator>equi</operator>
        <right_operand>c_car_stock.place_id</right_operand>
      </constraint>
      <constraint>
        <left_operand>person.person_id</left_operand>
        <operator>equi</operator>
        <right_operand>person_place.person_id</right_operand>
      </constraint>
    </join_constraint>
  </where>
</hierarchy_select>', NULL, NULL, 'BATCH_DELTA', 1, 'MODIFIED', 'Y', NULL, 'N', DATEADD(MILLISECOND,0, convert(datetime,'2020-07-13T16:02:11', 126)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-29T11:46:13', 126)), '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-26T10:52:28', 126)), NULL, 'EXTRACT');
GO

