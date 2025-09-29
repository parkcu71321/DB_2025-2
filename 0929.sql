select * from 고객;

insert into 고객(고객아이디,고객이름,나이,등급,직업,적립금) values ('strawberry','최유경',30,'vip','공무원',100);

insert into 고객 values ('kiwi','김키위',23,'silver','학생',500);

insert into 고객(고객아이디,고객이름,등급,직업,적립금) values ('grapes','강포도','vip','의사',1500);

create table 한빛제품(제품명 varchar(20) not null primary key, 재고량 int, 단가 int);

insert into 한빛제품(제품명,재고량,단가) select 제품명,재고량,단가 from 제품 where 제조업체='한빛제과';

select * from 한빛제품;
select * from 제품;

update 제품 set 단가=2000, 제품명='신라면' where 제품번호='p05';

update 제품 set 단가=단가*1.2;

select * from 고객;
update 주문 set 수량=5 where 주문고객 in (select 고객아이디 from 고객 where 고객이름='정소하');

delete from 한빛제품 where 단가>=1000 and 단가<=2500;

select * from 고객;

delete from 고객 where 고객이름='김키위';

create view 우수고객(고객아이디,고객이름,나이,등급) as select 고객아이디,고객이름,나이,등급 from 고객 where 등급='vip';
select * from 우수고객;

create view 업체별제품수(제조업체,제품수) as select 제조업체,count(*) from 제품 group by 제조업체;

select * from 우수고객 where 나이>=30;

create view 제품1(제품명,재고량,제조업체) as select 제품명,재고량,제조업체 from 제품;

select * from 제품1;

drop view 제품2;

create view 제품2(제품번호, 재고량, 제조업체)
    as select 제품번호, 재고량, 제조업체 from 제품
 
insert into 제품2 values('p08', 1000, '신선식품');

select * from 제품;
select * from 제품2;

delete from 제품2 where 제품번호='p08';


