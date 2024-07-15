SELECT * FROM dvd_db.sample_dvd_tb;
-- insert into 의 두 가지 방법: values로 넣는 방법(values괄호해서 일일이 값들을 타이핑해서 넣어야 함)(새 테이블에 우리가 원하는 새 값들을 넣을 때 그떄 사용), 
-- select로 넣는 방법(정규화 할 때는 무조건 select로)

-- insert into producer_tb(producer_name)
select
	제작자
from
	sample_dvd_tb
group by
	제작자;
    
-- insert into producer_tb
select
-- int 자료형의 빈 값은 0 / id는 어차피 ai라서 뭔 따로 안 넣어줘도 1부터 증가한다
	0,
	제작자
from
	sample_dvd_tb
group by
	제작자;
    
-- insert into publisher_tb
select
	0,
    발행자
from 
	sample_dvd_tb
group by
	발행자;
    
-- 밑에 update에 join 그대로 들고가도 이거 안 없앰(확인용으로 남겨둠)
select
	*
from
	sample_dvd_tb sdt
    left outer join producer_tb pdt on(pdt.producer_name = sdt.제작자)
    left outer join publisher_tb pbt on(pbt.publisher_name = sdt.발행자);
    
    
update 
	sample_dvd_tb sdt
    left outer join producer_tb pdt on(pdt.producer_name = sdt.제작자)
    left outer join publisher_tb pbt on(pbt.publisher_name = sdt.발행자)
set 
	sdt.producer_id = pdt.producer_id
    sdt.publisher_id = pbt.publisher_id;
	
