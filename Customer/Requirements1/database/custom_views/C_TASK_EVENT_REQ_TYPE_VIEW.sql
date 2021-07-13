SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[C_TASK_EVENT_REQ_TYPE_VIEW] AS
select task_event.task_id, request.req_type 
from task_event
join task on task.task_id = task_event.task_id
join request on task.request_id = request.request_id
GO
