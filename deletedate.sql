#데이터 삭제(DML - DELETE)

delete
from
	student_tb
    #is, not, between, like 등 다양하게 활용 가능
where
	student_id = 2;
    
    
# student_id가 5 ~ 7인 데이터들을 삭제하시오.
delete
from
	student_tb
where
	student_id between 5 and 7;
-- 	student_id > 4
-- 	and student_id < 8;