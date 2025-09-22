select * from 제품;
select * from 고객;
select * from 주문;


select c.고객아이디,p.제품명,p.단가 from 고객 c,제품 p,주문 o where c.고객이름='고명석' and o.주문고객=c.고객아이디 and p.제품번호 = o.주문제품;

select 주문제품,주문일자 from 주문,고객 where 나이>=30 and 고객아이디=주문고객;

select 주문제품,주문일자 from 고객 inner join 주문 on 고객아이디=주문고객 where 나이>=30;

select 고객이름,주문제품,주문일자 from 고객 left outer join 주문 on 고객아이디=주문고객;

select 고객이름,주문제품,주문일자 from 주문 right outer join 고객 on 고객아이디=주문고객;

select 제품명, 단가 from 제품 where 제조업체=(select 제조업체 from 제품 where 제품명='달콤비스킷');


select * from 주문;
select * from 제품;
select 주문고객,주문제품,수량 from 주문 where 주문제품=(select 제품번호 from 제품 where 제품명='쿵떡파이');

select * from 고객;
select 고객이름,적립금 from 고객 where 적립금=(select max(적립금) from 고객);

select * from 주문;
select * from 제품;
select 제품번호,제품명,제조업체 from 제품 where 제품번호 in (select 주문제품 from 주문 where 주문고객='banana');

select * from 고객;
select * from 주문;
select * from 제품;

select 고객아이디,나이,적립금,제품명,단가 from 고객,주문,제품 where 고객아이디=주문고객 and 주문제품=제품번호 and 주문고객 in (select 고객아이디 from 고객 where 고객이름 like '김%');

select 제품명,제조업체 from 제품 where 제품번호 not in (select 주문제품 from 주문 where 주문고객='banana');

select 제품명,단가,제조업체 from 제품 where 단가 > all(select 단가 from 제품 where 제조업체='대한식품');

select * from 고객;
select * from 주문;
select * from 제품;
--2022년 4월 11일에 제품을 주문한 고객의 고객이름을 검색해봐라
select 고객이름 from 고객 where 고객아이디=(select 주문고객 from 주문 where 주문일자='2022-04-11');

select 고객이름 from 고객 where exists (select 주문고객 from 주문 where 주문일자='2022-04-10' and 주문고객=고객아이디);

select 고객이름 from 고객 where not exists (select 주문고객 from 주문 where 주문일자='2022-04-10' and 주문고객=고객아이디);
