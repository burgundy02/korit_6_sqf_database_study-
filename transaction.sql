# 트랜잭션 (transaction) 

-- @@ 전역 / mySQL에 내장 돼 있는 변수 select함

set @name = "서명호";

-- 자동으로 commit 하겠다 (저장하겠다)
select @@autocommit;

select @name;

-- 0: false(끔) , 1: true(킴)
set autocommit = 0;



insert into master_tb
values
	(0, 6, 1);
commit;