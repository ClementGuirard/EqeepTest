CREATE VIEW C_IOT_OBSERVATION_ORDER_VIEW AS
/*created by: Clement Guirard
date: 06/07/2021
principle: Test for performance issues this view will help to reduce performance issues
please do not use the where statement here, use it in the validation XML rule
*/
select
A.observation_id,
CASE
when A.number1_value <= B.black_order_threshold and 
C.shipped_status_black IN ('NE','IP') THEN 'Y'
ELSE 'N'
END as order_black,
CASE
when A.number2_value <= B.cyan_order_threshold and 
C.shipped_status_cyan IN ('NE','IP') THEN 'Y'
ELSE 'N'
END as order_cyan,
CASE
when A.number3_value <= B.magenta_order_threshold and 
C.shipped_status_magenta IN ('NE','IP') THEN 'Y'
ELSE 'N'
END as order_magenta,
CASE
when A.number3_value <= B.yellow_order_threshold and 
C.shipped_status_yellow IN ('NE','IP') THEN 'Y'
ELSE 'N'
END as order_yellow
from iot_observation as A
join c_product_iot_data_view as B on B.device_id = A.device_id
join C_IOT_SHIPPED_TONER_TASKS_VIEW as C on C.device_id = A.device_id 
--where A.observation_id = '7892135' and A.observation_code = 'CRITICAL_TONER_LEVEL'