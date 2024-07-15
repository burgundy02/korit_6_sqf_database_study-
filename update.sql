# 데이터 수정(DML - UPDATE)
select * from student_tb;

select 
	student_id
from
	student_tb
where 
	student_name = "서명호";


update
	student_tb
set
	email = "skjil1218@gmail.com"
where
	student_id in (	select
						temp_student_tb.student_id
					from
						(select * from student_tb) as temp_student_tb
					where
						temp_student_tb.student_name = "서명호");
                        
update
	student_tb
set
	phone = "010-1234-4567",
    email = "dfkdk@naver.com"
where
	student_id = 3;
    
    
# 이메일 데이터 중 @앞에 bbb로 포함된 정보의 introduce 데이터를 'bbb를 포함하고 있는 계정입니다.'라고 수정하시오.
update 
	student_tb
set 
	introduce = "bbb를 포함하고 있는 계정입니다."
where
	email like "%bbb%@%";
	
	