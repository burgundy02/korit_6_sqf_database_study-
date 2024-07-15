SELECT * FROM dvd_db.join1_tb;
-- out에 들어오는 얘가 total에 들어감
set @total = 0;
set @err = 0;
call usp_mod_score("이병안", 60, "a", 90, @total, @err);

select @total, @err;