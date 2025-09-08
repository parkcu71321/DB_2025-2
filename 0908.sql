insert into 주문 values ('o01','apple','p03',10,'서울시 마포구','2022-01-01');
insert into 주문 values ('o02','melon','p01',5,'인천시 계양구','2022-01-10');
insert into 주문 values ('o03','banana','p06',45,'경기도 부천시','2022-01-11');
insert into 주문 values ('o04','carrot','p02',8,'부산시 금정구','2022-02-01');
insert into 주문 values ('o05','melon','p06',36,'경기도 용인시','2022-02-20');
insert into 주문 values ('o06','banana','p01',19,'충청북도 보은군','2022-03-02');
insert into 주문 values ('o07','apple','p03',22,'서울시 영등포구','2022-03-15');
insert into 주문 values ('o08','pear','p02',50,'강원도 춘천시','2022-04-10');
insert into 주문 values ('o09','banana','p04',15,'전라남도 목포','2022-04-11');
insert into 주문 values ('o10','carrot','p03',20,'경기도 안양시','2022-05-22');

alter table 주문 modify 배송지 varchar(30);
update 주문 set 배송지='전라남도 목포시' where 주문번호='o09';
select * from 주문 order by 주문번호;

select distinct 주문고객 from 주문;

select 고객아이디, 고객이름, 등급 from 고객;

select 주문고객 as 고객아이디, 주문제품 as 제품번호, 배송지, 주문일자 from 주문;

select * from 제품;

select 제품명, 단가+500 as "조정 단가" from 제품;

select * from 고객; 

select 고객이름,나이,직업 from 고객 where 직업='회사원';

select * from 제품;

select 제품명,재고량,단가 from 제품 where 제조업체='한빛제과';

select * from 주문;

select 주문제품,수량,주문일자 from 주문 where 주문고객='apple' and 수량 >= 10;

select * from 고객;

select 고객아이디,고객이름,나이,직업 from 고객 where 직업='회사원' and 나이 < 33;

select 주문제품,수량,주문일자 from 주문 where 주문고객='apple' or 수량 >= 10;

select 고객이름,등급,직업 from 고객 where 등급='gold' or 직업='간호사';

select 제품명,단가,제조업체 from 제품 where 단가>=2000 and 단가<=3000;

select 나이,등급,직업 from 고객 where (나이>=20 and 나이<=30) and (등급='gold' or 등급='silver') and 직업='학생';


--09.08
select 고객이름,나이,등급 from 고객 where 고객이름 like '김%';

select 고객이름,등급,직업 from 고객 where 등급 like '%i%';

select 고객아이디,고객이름, 등급, 직업 from 고객 where 고객아이디 like '%a%';

select 고객아이디, 고객이름, 등급, 직업 from 고객 where (고객아이디 like '%a%' and 등급 like '%i%') and (고객이름 like '김%');

select 고객아이디, 나이, 등급, 직업, 적립금 from 고객 where 고객아이디 like '_____';

select 고객아이디, 나이, 등급, 직업, 적립금 from 고객 where 고객아이디 like '_____' and 적립금>=3000;

select 고객이름, 직업, 등급 from 고객 where 직업 like '%사';

select 고객이름, 나이 from 고객 where 나이 is not null;

select 고객이름, 나이 from 고객 where 나이<25;

select 고객이름, 나이 from 고객 where 나이>=25;

select 고객이름, 나이 from 고객 order by 나이;

select 고객이름, 나이 from 고객 order by 나이 desc;

select 고객이름,나이,등급,직업 from 고객 where 등급='gold' or 등급='vip' order by 등급;

select * from 주문 where 주문제품 in('p03','p06') and 배송지 like '%경기도%' order by 수량 desc;

select 주문고객,주문제품,수량,주문일자 from 주문 where 수량>=10 order by 주문제품,수량 desc;

select 주문고객,주문제품,수량,배송지 from 주문 where 주문고객 like 'a%' or 주문고객 like 'b%' and 수량>=10 order by 주문고객 desc,주문제품 desc;

select avg(단가) from 제품;

select round(avg(단가),2) 단가평균 from 제품;

select ceil(avg(단가)) "단가 평균" from 제품;

select floor(avg(단가)) "단가 평균" from 제품;

select sum(단가) "2500원 ㅓ이상의 단가의 합계"from 제품 where 단가>=2500;

select count(고객아이디) 고객수 from 고객;

select count(나이) 고객수 from 고객;

select count(*) 고객수 from 고객;







