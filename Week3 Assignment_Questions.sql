select a.*,c.user_name
from tbl_groups a 
left join tbl_user_groups b 
on a.group_id = b.group_id 
left join tbl_users c on b.user_id = c.user_id  
;

select a.*,c.group_name
from tbl_rooms a 
left join tbl_group_rooms b 
on a.room_id = b.room_id 
left join tbl_groups c on b.group_id = c.group_id  
;

select 
a.user_name,c.group_name,e.room_name
from
tbl_users a 
left join tbl_user_groups b
on
a.user_id = b.user_id 
left join tbl_groups c
on 
c.group_id = b.group_id
left join tbl_group_rooms d
on
c.group_id = d.group_id
left join tbl_rooms e
on
d.room_id = e.room_id
order by a.user_name,c.group_name,e.room_name asc