SELECT * FROM dvd_db.master_tb;
# rollback을 하게되면 start transaction 다시 해야함.(그냥 rollback은 전체취소라서 다시 해야함)
start transaction; #{

-- 파란색글씨 예약어라서 가능한 쓰지 말기
set @name = "권혁진";
set @phone = "010-6666-8888";

savepoint sp_insert_name;
insert into join1_tb
values(0, @name);

savepoint sp_insert_phone;
insert into join2_tb
values(0, @phone);

-- 황인수, 6666-7777 없어짐
rollback to sp_insert_phone; -- 해당 지점까지만 롤백

-- 변수 초기화
set @new_join1_id = 0;
set @new_join2_id = 0;

select
-- into: 왼쪽을 오른쪽에 넣겠다
	join1_id into @new_join1_id
from
	join1_tb
order by
	join1_id desc
limit 0, 1;

select
-- into: 왼쪽을 오른쪽에 넣겠다
	join2_id into @new_join2_id
from
	join2_tb
order by
	join2_id desc
-- 제일 위에 한 개
limit 0, 1;


insert into master_tb
values(0, @new_join1_id, @new_join2_id);

commit;






	