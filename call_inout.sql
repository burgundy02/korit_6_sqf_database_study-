
-- inout
set @number = 10;

call usp_square(@number);

select @number;


-- function
select
	max(name_id)
from
	master_tb;
    
select
	add_number(10, 20);