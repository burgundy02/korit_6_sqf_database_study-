# view(뷰) 가상 테이블

-- dvd_view: view 이름
create view dvd_view as 
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
    left outer join publisher_tb pbt on(pbt.publisher_id = dt.publisher_id);
    
-- view: 위에서 view로 저장한 쿼리를 들고옴 / 서브 쿼리 저장
select
	*
from
	dvd_view
where
	producer_id = 10;
    
    
    
    
create view master_view as
select	
	mt.master_id,
    mt.name_id,
    jt1.name,
    mt.phone_id,
    jt2.phone,
    st.score_id,
    st.kor,
    st.eng,
    st.math
from 
	master_tb mt
    left outer join join1_tb jt1 on(mt.name_id = jt1.join1_id)
    left outer join join2_tb jt2 on(mt.phone_id = jt2.join2_id)
    left outer join score_tb st on(jt1.join1_id = st.score_id);
    
select
	*
from
	master_view

    
    