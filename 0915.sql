select 제조업체 from 제품;
select count(distinct 제조업체) "제조업체의 수" from 제품;

select * from 주문;
select count(distinct 주문고객) from 주문;

select 주문제품,sum(수량) 총주문수량 from 주문 group by 주문제품 order by 총주문수량;

select * from 주문;
select 주문고객,round(avg(수량),1) 수량의평균 from 주문 group by 주문고객 order by 주문고객;

select * from 고객;
select 등급,round(avg(적립금),2) from 고객 group by 등급 order by 등급 asc;

select * from 제품;
select 제조업체, count(재고량) 제품수, max(단가) 최고가 from 제품 group by 제조업체;

select * from 고객;
select 직업, avg(나이) 평균나이, min(적립금) "최저 적립금" from 고객 group by 직업;

select 제조업체,count(*) 제품수, max(단가) 최고가 from 제품 group by 제조업체 having count(*)>=3;

select 등급, count(*) 고객수, round(avg(적립금),2) 평균적립금 from 고객 group by 등급 having avg(적립금)>=1000;

select 주문제품,주문고객,sum(수량) 총주문수량 from 주문 group by 주문제품,주문고객;

select 주문제품,주문고객, sum(수량) 총주문수량 from 주문 group by 주문제품,주문고객 having sum(수량)>=30 and 주문제품 in('p01','p02','p03');

select * from 주문;
select * from 제품;
select 주문번호,주문고객,제품명,단가,제조업체 from 주문,제품 where 제품번호=주문제품;

select * from 제품;
select * from 주문;
select 제품.제품명 from 제품,주문 where 주문.주문고객='banana' and 제품.제품번호=주문.주문제품;

select * from 제품;
select * from 주문;
select * from 고객;
select * from 고객,제품,주문 where 고객.고객아이디='apple' and 고객.고객아이디=주문.주문고객 and 제품.제품번호=주문.주문제품;

select * from 제품;
select * from 주문;
select * from 고객;
select 나이,제품번호,제품명,주문일자 from 제품,주문,고객 where 나이>=30 and 고객.고객아이디=주문.주문고객 and 제품.제품번호=주문.주문제품


