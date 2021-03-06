DELETE FROM MM_PROCESS_DEF WHERE TABLE_NAME = 'PART_USAGE';
GO
INSERT INTO MM_PROCESS_DEF (table_name, owner, owner_identifier, ownership_query, initial_query, refresh_query, related_info_query, delivery_method, frequency, process_status, active, comments, broadcast_to_all_users, last_run_dttm, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm, package_extract_group, package_extract_action) VALUES('PART_USAGE', 'N', 'PERSON_ID', '<hierarchy_select>
 <primary_table>task_assignment_view</primary_table>
 <from>
  <table>task_assignment_view</table>
 </from>
 <attrs>
  <attr>task_assignment_view.person_id</attr>
 </attrs>
 <where>
  <data_constraint>
   <constraint>
    <left_operand>task_assignment_view.task_id</left_operand>
    <operator>eq</operator>
    <right_operand>{task_id}</right_operand>
   </constraint>
  </data_constraint>
 </where>
</hierarchy_select>', '<hierarchy_select return_only_requested_attrs="true" max_rows="50000">
  <primary_table>part_usage</primary_table>
  <attrs>
    <attr>part_usage.*</attr>
    <attr>part_usage_lot.*</attr>
  </attrs>
  <from>
    <table>part_usage</table>
    <table>part_usage_lot</table>
    <table>task</table>
    <table>task_assignment_view</table>
  </from>
  <where>
    <data_constraint>
      <constraint>
        <left_operand>TASK_ASSIGNMENT_VIEW.PERSON_ID</left_operand>
        <operator>eq</operator>
        <right_operand>{PERSON_ID}</right_operand>
      </constraint>
      <and/>
      <constraint>
        <left_operand>task.status</left_operand>
        <operator>eq</operator>
        <right_operand>OP</right_operand>
      </constraint>
      <and/>
      <parens>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>OPEN</right_operand>
        </constraint>
        <or/>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>ASSIGNED</right_operand>
        </constraint>
        <or/>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>COMMITTED</right_operand>
        </constraint>
        <or/>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>ACCEPTED</right_operand>
        </constraint>
        <or/>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>ENROUTE</right_operand>
        </constraint>
        <or/>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>ARRIVED</right_operand>
        </constraint>
        <or/>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>IN PROCESS</right_operand>
        </constraint>
        <or/>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>RECEIVED</right_operand>
        </constraint>
         <or/>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>INPROGRESS</right_operand>
        </constraint>
        <or/>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>WORKSTOP</right_operand>
        </constraint>
        <or/>
        <constraint>
          <left_operand>task.task_status</left_operand>
          <operator>eq</operator>
          <right_operand>INPROCESSWITH</right_operand>
        </constraint>
      </parens>
    </data_constraint>
    <join_constraint>
      <constraint>
        <left_operand>part_usage.task_id</left_operand>
        <operator>eq</operator>
        <right_operand>task.task_id</right_operand>
      </constraint>
      <constraint>
        <left_operand>part_usage.pu_id</left_operand>
        <operator>left_outer</operator>
        <right_operand>part_usage_lot.pu_id</right_operand>
      </constraint>
      <constraint>
        <left_operand>task.task_id</left_operand>
        <operator>eq</operator>
        <right_operand>task_assignment_view.task_id</right_operand>
      </constraint>
    </join_constraint>
  </where>
</hierarchy_select>', NULL, '<hierarchy_select return_only_requested_attrs="true" max_rows=''50000''>
 <primary_table>PART_USAGE</primary_table>
 <from>
  <table>PART_USAGE</table>
  <table>PART_DISP</table>
  <table>PART_USAGE_LOT</table>
 </from>
 <attrs>
  <attr>PART_USAGE.*</attr>
  <attr>PART_DISP.*</attr>
  <attr>PART_USAGE_LOT.*</attr>
 </attrs>
 <where>
  <data_constraint>
   <constraint>
    <left_operand>PART_USAGE.PU_ID</left_operand>
    <operator>eq</operator>
    <right_operand>{PU_ID}</right_operand>
   </constraint>
  </data_constraint>
  <join_constraint>
   <constraint>
    <left_operand>PART_USAGE.PU_ID</left_operand>
    <operator>left_outer</operator>
    <right_operand>PART_DISP.PU_ID</right_operand>
   </constraint>
   <constraint>
    <left_operand>PART_USAGE.PU_ID</left_operand>
    <operator>left_outer</operator>
    <right_operand>PART_USAGE_LOT.PU_ID</right_operand>
   </constraint>
  </join_constraint>
 </where>
</hierarchy_select>', 'REAL_TIME', NULL, 'MODIFIED', 'Y', NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-07-02T13:17:09', 126)), 'METRIX', DATEADD(MILLISECOND,0, convert(datetime,'2019-06-02T19:45:53', 126)), NULL, 'EXTRACT');
GO

