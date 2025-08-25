alter table 고객 add 가입날짜 date;
alter table 고객 drop column 가입날짜;
alter table 고객 add constraint check_age check (나이>=20);
alter table 고객 drop constraint check_age;
desc 고객;
drop table 배송업체;

insert into 고객 (고객아이디,고객이름, 나이, 등급, 직업, 적립금) values ('apple','정소하',20,'gold','학생',1000);
insert into 고객 (고객아이디,고객이름, 나이, 등급, 직업, 적립금) values ('banana','김선우',25,'vip','간호사',2500);
insert into 고객 (고객아이디,고객이름, 나이, 등급, 직업, 적립금) values ('carrot','고명석',28,'gold','교사',4500);
insert into 고객 (고객아이디,고객이름, 나이, 등급, 직업, 적립금) values ('orange','김용욱',22,'silver','학생',0);
insert into 고객 (고객아이디,고객이름, 나이, 등급, 직업, 적립금) values ('melon','성원용',35,'gold','회사원',5000);
insert into 고객 (고객아이디,고객이름, 등급, 직업, 적립금) values ('peach','오형준','gold','교사',4500);
insert into 고객 (고객아이디,고객이름, 나이, 등급, 직업, 적립금) values ('pear','채광주',31,'silver','회사원',500);

select * from 고객;