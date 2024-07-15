SELECT * FROM dvd_db.publisher_tb;

insert into publisher_tb(publisher_name)
select
	nullif(발행자, "") as publisher_name
from
	sample_dvd_tb
group by
	발행자
having
	publisher_name is not null;