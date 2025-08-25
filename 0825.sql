create table 고객 (
고객아이디 varchar(20) not null primary key ,
고객이름 varchar(20) not null,
나이 int,
등급 varchar(20) not null,
직업 varchar(20),
적립금 int default 0
);