-- 1번

insert into delivery_mst
values
	(0,'대한통운','김준일','부산광역시 연제구 중앙대로 1001 부산광역시청','김춘식','010-8282-5353','안전하게 배송해주세요.');

select *
from delivery_mst;

-- 2번

show databases;
use delivery_db;
show tables;
desc delivery_mst;

-- 3번 

insert into student_mst 
values
	(0,'김춘식'),
    (0,'손흥민');
select *
from student_mst;

insert into subject_mst 값 다 넣어보십시오
values 
	(0,'컴퓨터 구조'),
	(0,'데이터베이스'),
	(0,'인공지능');

select *
from score_mst;

insert into score_mst
values
	(0,1,1,95),
	(0,2,1,84),
	(0,1,2,89),
	(0,2,2,92),
	(0,1,3,100),
	(0,2,3,88);

select  
	sm.id as '순번',
    sm.student_id as '학번',
    stm.name as '이름',
    sm.subject_id as '과목번호',
    sbm.name as '과목이름',
    sm.score as '점수'
from score_mst sm     
	left outer join student_mst stm on(stm.id = sm.student_id)
    left outer join subject_mst sbm on(sbm.id = sm.subject_id) 
limit 4; 


-- 4번

insert into `상품`
values
	(0,'딸기사탕',50),
	(0,'누룽지사탕',100);
select * from `상품`;

set autocommit = 1; 

START TRANSACTION;

INSERT INTO `상품`
VALUES(0, '오렌지사탕', 20);
UPDATE `상품`
SET
    `수량` = 200
WHERE
    `상품코드` = 1; 

savepoint p1; 
UPDATE `상품`
SET
    `수량` = 200
WHERE
    `상품코드` = 2;
DELETE
FROM 
    `상품`
WHERE
    `상품코드` = 2;
rollback to p1; 
select * from `상품`;
COMMIT; 

-- 5번

insert into `학생`
values
	('20013001','홍길동','컴퓨터공학과'),
	('20013002','김철수','전자공학과');
select * from `학생`; 

create index STUDENT_CODE_INDEX on `학생`(`학번`); 
show index from `학생`;
truncate `학생`;

-- 6번

create view USER_VIEW
as
	SELECT
    `ID`,
    `USERNAME`,
    `PASSWORD`,
    `NAME`,
    `EMAIL`
FROM
    `user_mst`
WHERE
    `ID` BETWEEN 1 AND 200;  
        
select 
	*
from 
	USER_VIEW
where
	USERNAME like 'a%';
    
-- 7번 

show index from `학생`; 

SHOW FULL TABLES IN STUDENT_DB 
WHERE TABLE_TYPE LIKE 'VIEW';

