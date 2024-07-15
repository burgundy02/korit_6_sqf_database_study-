insert into publisher_tb(publisher_name)
select 
   -- 발행자,
	nullif(발행자, "")  -- nullif: 조건이 같으면 null을 넣어라 /
					-- replace: 띄어쓰기가 들어간 것 " "을 공백으로 바꿈 ""
   -- ifnull(nullif(replace(발행자, " ", ""), ""), "발행자없음") -- ifnull: 만약 조건이 null이면, 다음 값으로 대체해라
   
from						
	sample_dvd_tb
group by
	발행자
having
	nullif(발행자, "") is not null ;
    
    
    
    
-- nullif 설명
insert into publisher_tb
select
	nullif(발행자, "")as publisher_name
from
	sample_dvd_tb
group by
	발행자
having
	publisher_name is not null;
	