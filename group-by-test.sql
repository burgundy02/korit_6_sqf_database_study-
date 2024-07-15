select * from book_tb

where
	book_id > 7000
group by
	category_id;
    
-- 도서명중에 '돈'이라는 글자가 들어간 데이터들을 찾아 카테고리별로 묶으시오. 
-- 그리고 카테고리 별로 도서 개수가 출력되어야 한다.   

-- 서브쿼리는 최대한 안쓴다, select는 최소한으로 한다.
select
	*
from
	(select 
		category_id,
		count(*) as category_count
	from #1
		book_tb
	where #2
		book_name like "%돈%"
	group by #3
		category_id) as category_group_book_tb
where
	category_count > 10;   
    
    
select #4
	category_id,
	count(*) as category_count
from #1
	book_tb
where #2
	book_name like "%돈%"
group by #3
	category_id
-- 그룹 이후의 조건
having #5 
	category_count > 10;
    


    

    
    
    