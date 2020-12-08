select * from member_master_tbl

select * from admin_login_tbl

Insert into admin_login_tbl values('sk123','123','Shubham');

select * from member_master_tbl where member_id='sk123' and password='123';

select * from admin_login_tbl where username='' and password='';