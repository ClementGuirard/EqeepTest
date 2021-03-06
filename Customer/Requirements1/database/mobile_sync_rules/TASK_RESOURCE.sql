DELETE FROM MM_PROCESS_DEF WHERE TABLE_NAME = 'TASK_RESOURCE';
GO
INSERT INTO MM_PROCESS_DEF (table_name, owner, owner_identifier, ownership_query, initial_query, refresh_query, related_info_query, delivery_method, frequency, process_status, active, comments, broadcast_to_all_users, last_run_dttm, user_def1, user_def2, user_def3, user_def4, user_def5, user_def6, user_def7, user_def8, user_def9, user_def10, user_def11, user_def12, user_def13, user_def14, user_def15, user_def16, user_def17, user_def18, user_def19, user_def20, user_def21, user_def22, user_def23, user_def24, user_def25, user_def_dttm1, user_def_dttm2, user_def_dttm3, user_def_dttm4, user_def_dttm5, user_def_num1, user_def_num2, user_def_num3, user_def_num4, user_def_num5, modified_by, modified_dttm, created_by, created_dttm, package_extract_group, package_extract_action) VALUES('TASK_RESOURCE', 'Y', 'PERSON_ID', NULL, '<hierarchy_select return_only_requested_attrs="true" max_rows="50000">
  <primary_table>task_resource</primary_table>
  <attrs>
    <attr>task_resource.*</attr>
  </attrs>
  <from>
    <table>task_resource</table>
    <table>task</table>
  </from>
  <where>
    <data_constraint>
      <constraint>
        <left_operand>TASK_RESOURCE.PERSON_ID</left_operand>
        <operator>eq</operator>
        <right_operand>{PERSON_ID}</right_operand>
      </constraint>
      <and/>
      <constraint>
        <left_operand>TASK_RESOURCE.ASSIGNED_RESOURCE</left_operand>
        <operator>eq</operator>
        <right_operand>Y</right_operand>
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
        <left_operand>task_resource.task_id</left_operand>
        <operator>equi</operator>
        <right_operand>task.task_id</right_operand>
      </constraint>
    </join_constraint>
  </where>
</hierarchy_select>', NULL, '<hierarchy_select return_only_requested_attrs="true" max_rows=''50000''>
  <primary_table>TASK_RESOURCE</primary_table>
  <from>
    <table>TASK</table>
    <table>PLACE</table>
    <table>PLACE_ADDRESS</table>
    <table>ADDRESS</table>
    <table>CONTACT</table>
    <table>REQUEST</table>
    <table>REQUEST_CONTACT</table>
    <table>REQUEST_UNIT</table>
    <table>RECEIVING</table>
    <table>RECEIVING_UNIT</table>
    <table>PRODUCT</table>
    <table>MODEL</table>
    <table>PART_NEED</table>
    <table>SHIPMENT</table>
    <table>TIME_CLOCK_EVENT</table>
    <table>ESCALATION</table>
    <table>CONTRACT</table>
    <table>CONTR_TYPE</table>
    <table>TASK_ATTACHMENT</table>
    <table>ATTACHMENT</table>
    <table>WARRANTY_COVERAGE</table>
    <table>TIME_COMMIT</table>
    <table>QUALITY</table>
    <table>TASK_RESOURCE</table>
  </from>
  <attrs>
    <attr>TASK.*</attr>
    <attr>PLACE.*</attr>
    <attr>PLACE_ADDRESS.*</attr>
    <attr>ADDRESS.*</attr>
    <attr>CONTACT.*</attr>
    <attr>REQUEST.*</attr>
    <attr>REQUEST_CONTACT.*</attr>
    <attr>REQUEST_UNIT.*</attr>
    <attr>RECEIVING.*</attr>
    <attr>RECEIVING_UNIT.*</attr>
    <attr>PRODUCT.*</attr>
    <attr>MODEL.*</attr>
    <attr>PART_NEED.*</attr>
    <attr>SHIPMENT.*</attr>
    <attr>TIME_CLOCK_EVENT.*</attr>
    <attr>ESCALATION.*</attr>
    <attr>CONTRACT.*</attr>
    <attr>CONTR_TYPE.*</attr>
    <attr>TASK_ATTACHMENT.*</attr>
    <attr>ATTACHMENT.*</attr>
    <attr>WARRANTY_COVERAGE.*</attr>
    <attr>TIME_COMMIT.*</attr>
    <attr>QUALITY.*</attr>
    <attr>TASK_RESOURCE.*</attr>
  </attrs>
  <where>
    <data_constraint>
      <constraint>
        <left_operand>TASK_RESOURCE.TASK_ID</left_operand>
        <operator>eq</operator>
        <right_operand>{TASK_ID}</right_operand>
      </constraint>
      <constraint>
        <left_operand>TASK_RESOURCE.PERSON_ID</left_operand>
        <operator>eq</operator>
        <right_operand>{PERSON_ID}</right_operand>
      </constraint>
      <and/>
      <constraint>
        <left_operand>TASK_RESOURCE.ASSIGNED_RESOURCE</left_operand>
        <operator>eq</operator>
        <right_operand>Y</right_operand>
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
      </parens>
      <and/>
      <constraint>
        <left_operand>receiving.inventory_adjusted</left_operand>
        <operator>eq</operator>
        <right_operand>N</right_operand>
      </constraint>
      <and/>
      <constraint>
        <left_operand>TIME_CLOCK_EVENT.PERSON_ID</left_operand>
        <operator>eq</operator>
        <right_operand>{PERSON_ID}</right_operand>
      </constraint>
    </data_constraint>
    <join_constraint>
      <constraint>
        <left_operand>TASK.REQUEST_ID</left_operand>
        <operator>equi</operator>
        <right_operand>REQUEST.REQUEST_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>TASK.PLACE_ID_CUST</left_operand>
        <operator>left_outer</operator>
        <right_operand>PLACE.PLACE_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>PLACE.PLACE_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>PLACE_ADDRESS.PLACE_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>PLACE_ADDRESS.ADDRESS_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>ADDRESS.ADDRESS_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>TASK.CONTACT_SEQUENCE</left_operand>
        <operator>left_outer</operator>
        <right_operand>CONTACT.CONTACT_SEQUENCE</right_operand>
      </constraint>
      <constraint>
        <left_operand>REQUEST.REQUEST_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>REQUEST_CONTACT.REQUEST_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>REQUEST.REQUEST_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>REQUEST_UNIT.REQUEST_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>REQUEST.REQUEST_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>PART_NEED.REQUEST_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>TASK.PRODUCT_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>PRODUCT.PRODUCT_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>PRODUCT.MODEL_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>MODEL.MODEL_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>TASK.REQUEST_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>SHIPMENT.REQUEST_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>SHIPMENT.SHIPMENT_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>RECEIVING.SHIPMENT_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>RECEIVING.RECEIVING_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>RECEIVING_UNIT.RECEIVING_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>TASK.TASK_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>TIME_CLOCK_EVENT.FOREIGN_KEY_NUM1</right_operand>
      </constraint>
      <constraint>
        <left_operand>TASK.TASK_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>ESCALATION.FOREIGN_KEY_NUM1</right_operand>
      </constraint>
      <constraint>
        <left_operand>REQUEST_UNIT.CONTRACT_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>CONTRACT.CONTRACT_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>REQUEST_UNIT.REQUEST_UNIT_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>QUALITY.REQUEST_UNIT_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>CONTRACT.CONTR_TYPE</left_operand>
        <operator>left_outer</operator>
        <right_operand>CONTR_TYPE.CONTR_TYPE</right_operand>
      </constraint>
      <constraint>
        <left_operand>REQUEST_UNIT.WTY_COV_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>WARRANTY_COVERAGE.WTY_COV_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>REQUEST.REQUEST_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>TIME_COMMIT.REQUEST_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>TASK.TASK_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>TASK_ATTACHMENT.TASK_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>TASK_ATTACHMENT.ATTACHMENT_ID</left_operand>
        <operator>left_outer</operator>
        <right_operand>ATTACHMENT.ATTACHMENT_ID</right_operand>
      </constraint>
      <constraint>
        <left_operand>TASK_RESOURCE.TASK_ID</left_operand>
        <operator>equi</operator>
        <right_operand>TASK.TASK_ID</right_operand>
      </constraint>
    </join_constraint>
  </where>
</hierarchy_select>', 'REAL_TIME', NULL, 'MODIFIED', 'Y', NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000846', DATEADD(MILLISECOND,0, convert(datetime,'2020-07-02T16:59:21', 126)), 'ADS', DATEADD(MILLISECOND,0, convert(datetime,'2014-08-13T17:01:43', 126)), NULL, 'EXTRACT');
GO

