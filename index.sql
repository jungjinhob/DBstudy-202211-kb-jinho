/*
	인덱스(INDEX)
    테이블의 동작속도(조회)를 높여주는 자료구조 
    id(key, auto increment)와 같다..
*/

insert into delivery_mst
values
	('20221216001','부산 동래구 교대역점'),
	('20221216002','부산 동래구 교대역점'),
	('20221216003','부산 동래구 교대역점'),
	('20221216004','부산 동래구 교대역점');
    
truncate delivery_mst;
select
	*
from delivery_mst;

create index order_id on delivery_mst(`주문번호`);
show index from delivery_mst;

/*
가상의 테이블 view
*/

