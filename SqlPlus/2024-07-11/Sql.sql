create table emp_master (
    emp_id number(3) primary key,
    emp_name varchar2(20),
    emp_job varchar2(2),
    emp_grade number(2),
    emp_pay number(8)
);

Desc emp_master;
Drop table emp_master;

ereate table ho_master (
    ho_grade number(2) primary key,
    ho_start number(7),
    ho_end number(7)    
);

Desc ho_master;
Drop table ho_master;
 
insert into emp_master values('101', '이기호', '10', '10', '1000');
insert into emp_master values('111', '정진기', '10', '10', '1500');
insert into emp_master values('121', '남만열', '20', '10', '1200');
insert into emp_master values('122', '박선영', '20', '20', '2700');
insert into emp_master values('123', '박순기', '20', '20', '2500');
insert into emp_master values('124', '최석금', '30', '20', '2400');
insert into emp_master values('222', '김한나', '10', '30', '3500');
insert into emp_master values('223', '정선희', '10', '30', '3400');
insert into emp_master values('224', '김민석', '30', '30', '3900');
insert into emp_master values('700', '우민주', null, null, '20');
insert into emp_master values('701', '황남도', null, null, '10');

insert into emp_master values('900', '우민주', null, null, '20');
insert into emp_master values('901', '황남도', null, null, '10');



insert into ho_master values('10', '100', '1999');
insert into ho_master values('20', '2000', '2999');
insert into ho_master values('30', '3000', '3999');
insert into ho_master values('40', '4000', '4999');
insert into ho_master values('50', '5000', '5999');
insert into ho_master values('60', '6000', '6999');
insert into ho_master values('70', '7000', '7999');
insert into ho_master values('80', '8000', '8999');
insert into ho_master values('90', '9000', '9999');

create index emp_master_i2 on emp_master(emp_name);
create unique index emp_master_i3 on emp_master(emp_name);


SELECT emp_id, emp_name, emp_grade, emp_pay, ho_start, ho_end
FROM emp_master e
INNER JOIN ho_master h
ON e.emp_grade = h.ho_grade;

create view emp_ho_master_view as
  SELECT emp_id, emp_name, emp_grade, emp_pay, ho_start, ho_end
  FROM emp_master, ho_master
  where emp_grade = ho_grade;

select count(*) from emp_master;
select count(*), count(emp_grade) from emp_master;
select count(*), count(emp_pay), sum(emp_pay) from emp_master;
select count(*), count(emp_pay), sum(emp_pay), avg(emp_pay) from emp_master;
