SELECT * FROM dvd_db.rental_tb;

#insert into rental_tb

select
	*
from
	rental_tb rt
    left outer join (
					select
						distinct
						0 as rental_id,
						-- 0 부터 3000개의 숫자 중 (0 ~ 2999) 랜덤한 숫자
						floor(rand() * 3000) + 1 as dvd_id,
						"김준이" as customer_name,
						now() as rental_date 
					from
						dvd_tb
					where
						dvd_id < 1001
					order by
						dvd_id) rt2 on(rt2.dvd_id)