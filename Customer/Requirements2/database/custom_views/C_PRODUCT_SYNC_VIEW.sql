CREATE VIEW C_PRODUCT_SYNC_VIEW AS
select product.product_id, 
person.person_id,
warranty_coverage.effective_dt
from product
join place on place.place_id = product.place_id
join person on person.user_def1 = product.user_def16
join warranty_coverage on warranty_coverage.product_id = product.product_id
where warranty_coverage.effective_dt > DATEADD(month, -3, GETDATE())