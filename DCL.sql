/*	
	계정생성 DDL
    CREATE USER '계정아이디'@localhost identified by '비밀번호'; (내부 IP 접속)
    CREATE USER '계정아이디'@% identified by '비밀번호'; (외부 IP 접속)
		> create user 'junil'@localhost identified by 'root';
        > grant all privileges on *.* to junil@localhost;
        > flush privileges;

	DCL	(권한관련)
    1.GRANT(데이터베이스, 테이블 사용자 권한 부여)
		-GRANT 권한 TO 사용자 계정
        -GRANT 권한 ON 객체명(데이터베이스.테이블명) TO 사용자 계정
			> GRANT ALL PRIVILEGES ON subquery_study.board_mst(*도됨) TO root@localhost -> 내부ip(현재 pc에서 접근가능)
            > GRANT ALL PRIVILEGES ON subquery_study.board_mst(*도됨) TO root@% -> 외부 ip(다른pc에서도 접근 가능)
            > GRANT ALL PRIVILEGES ON subquery_study.board_mst(*도됨) TO root@200.100.% -> 외부 ip(해당 ip를 포함하고 있는 pc에서만 접근가능)
    2.REVOKE(데이터베이스, 테이블 사용자 권한 회수)
		-REVOKE 권한 TO 사용자 계정
        -REVOKE 권한 ON 객체명(데이터베이스.테이블명) TO 사용자 계정
			> REVOKE insert, update, create ON *.* TO root@localhost;(모든 DB에 있는 insert, update, create 권한 해제 )
    ﻿
//오토커밋
select @@autocommit;

set autocommit = 1 or 0 ( true or false)

﻿
*/