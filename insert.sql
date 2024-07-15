# 데이터 삽입(DML - INSERT)

select * from student_tb;

# insert into `study`.`student_tb` 	Database가 use 되지 않은 경우
# insert into `student_tb`			Database가 use 상태인 경우

insert into student_tb 
	(student_id, student_name, phone, email, introduce, admission_date)
values
	(0, "서명호","010-1111-2222", "dfkdk@dkfkfk.com", now());
    
insert into student_tb 
	(student_id, student_name, phone, email, admission_date)
values
	(0, "최승철","010-1111-2222", "dfkdk@dkfkfk.com", now()),
	(0, "윤정한","010-1111-2222", "dfkdk@dkfkfk.com", now()),
	(0, "홍지수","010-1111-2222", "dfkdk@dkfkfk.com", now());
    
insert into student_tb 
	(student_id, student_name, phone, email, introduce, admission_date)
values
	(0, "서명호","010-1111-2222", "dfkdk@dkfkfk.com", null, now());
    
insert into student_tb 
	(student_id,  phone, email, introduce, student_name, admission_date)
values
	(0, "010-1111-2222", "dfkdk@dkfkfk.com", null, "최한솔", now());
    
insert into student_tb 
	(student_id, phone, email, introduce, student_name, admission_date)
values
	(0, "010-1111-2222", "dfkdk@dkfkfk.com", null, "문준휘", now());
    
insert into student_tb 
values
	(0, "서명호","010-1111-2222", "dfkdk@dkfkfk.com", null, now());
    
    
insert into car_tb 
	(car_id, car_number, model, car_color, manufacturing_date)
values
	(0, "888-8888", "벤츠", "검정색", now());
    
    
insert into car_tb 
	(car_id, car_number, model, car_color, manufacturing_date)
values
	(0, "888-8888", "벤츠", "검정색", now());