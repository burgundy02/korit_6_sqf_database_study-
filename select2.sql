# where - 조건

# 단순 비교 연산
select 
	*
from
	student_tb
where
	student_name = "김준일";

# OR 연산
select
	student_id,
    student_name
from
	student_tb
where
	student_name = "김준일"
    or student_name = "김준이";

# in 연산
select
	*
from
	student_tb
where
	student_name in ("김준일", "김준이", "김준삼");
    
# AND 연산
select
	*
from 
	student_tb
where
	student_id > 2
    and student_id < 4;

# BETWEEN A AND B -> A부터 B까지
select
	*
from
	student_tb
where
	student_id between 2 and 4;

# NOT
select
	*
from
	student_tb
where
	not student_name = "김준일";
    
# NULL 체크
# is null 긍정
# is not null 부정
select
	*
from
	student_tb
where
	introduce is null;
#	introduce is not null;


insert into student_tb
values
	(0, "손경태", "010-1111-2222", "aaa@gmail.com", null, now()),
	(0, "김지현", "010-1111-3333", "bbb@naver.com", null, now()),
	(0, "김동인", "010-2222-2222", "ccc@gmail.com", null, now()),
	(0, "김정현", "010-4444-3333", "aaabbb@naver.com", null, now()),
	(0, "권오광", "010-5555-2222", "bbbccc@kakao.com", null, now()),
	(0, "권혁진", "010-1111-5555", "aaabbbccc@kakao.com", null, now());


# 와일드 카드(like)

select
	*
from
	student_tb
where
	student_name like "김%";
    
select
	*
from
	student_tb
where
	email like "%gmail.com";
    
select
	*
from
	student_tb
where
	phone like "%2222%"
    and not phone like "%2222";
    
select
	*
from
	student_tb
where
	email like "___bbb%";
	
	
    