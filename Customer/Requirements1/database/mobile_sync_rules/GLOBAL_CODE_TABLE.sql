DELETE FROM MM_PROCESS_DEF WHERE TABLE_NAME = 'GLOBAL_CODE_TABLE';
GO
INSERT INTO MM_PROCESS_DEF (table_name, owner, owner_identifier, ownership_query, initial_query, refresh_query, related_info_query, delivery_method, frequency, process_status, active, comments, broadcast_to_all_users, last_run_dttm, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm, package_extract_group, package_extract_action) VALUES('GLOBAL_CODE_TABLE', 'N', NULL, NULL, '<hierarchy_select return_only_requested_attrs="true" max_rows="50000">
 <primary_table>GLOBAL_CODE_TABLE</primary_table>
 <from>
  <table>GLOBAL_CODE_TABLE</table>
 </from>
 <attrs>
  <attr>GLOBAL_CODE_TABLE.ACTIVE</attr>
  <attr>GLOBAL_CODE_TABLE.CODE_NAME</attr>
  <attr>GLOBAL_CODE_TABLE.CODE_VALUE</attr>
  <attr>GLOBAL_CODE_TABLE.DESCRIPTION</attr>
  <attr>GLOBAL_CODE_TABLE.SEQUENCE</attr>
  <attr>GLOBAL_CODE_TABLE.DESC_MESSAGE_ID</attr>
  <attr>GLOBAL_CODE_TABLE.MESSAGE_ID</attr>
 </attrs>
 <where>
  <data_constraint>
   <parens>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>TASK_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>PRIORITY</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>CURRENCY</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>REQ_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>QUOTE_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>ROLE_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>WORK_STATUS</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>U_M_OUT</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>PAYMENT_METHOD</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>PAYMENT_CARD_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>SYMPTOM</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>PROBLEM</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>RESOLUTION</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>NPU_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>ATTACHMENT_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>ESC_STATUS</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>ESC_REASON</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>ESC_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>STEP_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>OPPTY_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>LEAD_SOURCE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>RESPONSE_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>PLACE_TYPE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>PLACE_CATEGORY</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>PLACE_STATUS</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>TRAVEL_ZONE</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>SATISFACTION</right_operand>
    </constraint>
    <or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>QUOTE_TYPE</right_operand>
    </constraint>
<or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>PCOV_CODE</right_operand>
    </constraint>
<or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>NPCOV_CODE</right_operand>
    </constraint>
<or/>
    <constraint>
     <left_operand>GLOBAL_CODE_TABLE.CODE_NAME</left_operand>
     <operator>EQ</operator>
     <right_operand>C_PHENOMENOM_CODE</right_operand>
    </constraint>
   </parens>
  </data_constraint>
 </where>
</hierarchy_select>', NULL, NULL, 'BATCH_DELTA', 24, 'MODIFIED', 'Y', NULL, 'N', DATEADD(MILLISECOND,0, convert(datetime,'2020-07-09T14:45:51', 126)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-06-26T15:12:06', 126)), 'METRIX', DATEADD(MILLISECOND,0, convert(datetime,'2019-06-02T19:45:52', 126)), NULL, 'EXTRACT');
GO

