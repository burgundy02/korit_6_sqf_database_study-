SELECT * FROM dvd_db.dvd_tb;

# 실행 순서: from -> where -> group by -> select -> having(그룹바이 조건 거는 거) -> order by(desc, asc) -> limit

insert into dvd_tb
select
	0,
    등록번호,
    제목,
    pdt.producer_id,
    pbt.publisher_id,
    발행년,
    데이터기준일자
from
	sample_dvd_tb sdt
    left outer join producer_tb pdt on(pdt.producer_name = sdt.제작자)
    left outer join publisher_tb pbt on(pbt.publisher_name = sdt.발행자);
    
select
	dt.dvd_id,
    dt.registration_number,
    dt.title,
    dt.producer_id,
    pdt.producer_name,
    dt.publisher_id,
    pbt.publisher_name,
    dt.publication_year,
    dt.database_date
from
	dvd_tb dt
    left outer join producer_tb pdt on(pdt.producer_id = dt.producer_id)
    left outer join publisher_tb pbt on(pbt.publisher_id = dt.publisher_id)
-- limit a, b: 인덱스번호 a 부터 b만큼의 개수로 값 출력
limit 10, 10;

-- 중복된 dvd가 있는지 확인
select
	title,
	producer_id,
    publisher_id,
    count(*) as dvd_count
from
	dvd_tb
group by
	title,
    producer_id,
    publisher_id
having
	dvd_count > 1;
    