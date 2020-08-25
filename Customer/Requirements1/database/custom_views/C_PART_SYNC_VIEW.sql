CREATE VIEW C_PART_SYNC_VIEW AS
select part.part_id,
part.internal_descriptn, 
part.part_status, 
part.product_name,
part.product_family, 
part.part_type, 
part.part_group, 
part.part_class, 
part.serialed, 
part.U_M_OUT, 
part.LOT_IDENTIFIED,
part.part_becomes_prod,
part.model_id, 
part.controlled_part, 
part.serial_id_prefix, 
part.modified_dttm
from part
join model_structure on model_structure.part_id = part.part_id
join request_unit on request_unit.model_id =  model_structure.parent_model_id
join task on task.request_id = request_unit.request_id
where task.status != 'CO' and task.status != 'CA' and task.status != 'CL'
group by part.part_id,
part.internal_descriptn, 
part.part_status, 
part.product_name,
part.product_family, 
part.part_type, 
part.part_group, 
part.part_class, 
part.serialed, 
part.U_M_OUT, 
part.LOT_IDENTIFIED,
part.part_becomes_prod,
part.model_id, 
part.controlled_part, 
part.serial_id_prefix, 
part.modified_dttm