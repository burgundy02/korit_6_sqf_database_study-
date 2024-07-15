# 출판사를 기준으로 category의 count를 집계한다.

select
	*
from
	(select
		-- partition by: 순위를 매길 범위
        
		-- rank(): publisher_id 안에서 book_count가 큰 수 부터 번호를 매긴다(수가 같으면 공동 순위로 -> 1등, 2등, 2등, 4등). 
	#	rank() over(partition by publisher_id order by book_count desc) as `rank`,
    
		-- dense_rank(): publisher_id 안에서 book_count가 큰 수 부터 번호를 매긴다(수가 같으면 공동 순위로 -> 1등, 2등, 2등, 3등). 
	#	dense_rank() over(partition by publisher_id order by book_count desc) as `dense_rank`,
    
		-- row_number(): publisher_id 안에서 book_count가 큰 수 부터 번호를 매긴다(수가 같으면 행의 순서대로 -> 순위 중복x).
		row_number() over(partition by publisher_id order by book_count desc) as `num`,
		pc_count_tb.*
	from
		(	select
				publisher_id,
				category_id,
				count(*) as book_count	
			from
				book_tb
			group by
				publisher_id,
				category_id) as pc_count_tb) as book_row_number_tb
where
	num = 1;
    
select * from student_tb;

select
	*
from
	(	select
			rank() over(partition by class order by score desc) as `rank`,
			student_tb.*
		from
			student_tb) as student_rank_tb
where
	`rank` = 1;


	
	
