select * from user_tables;

-- 주석
-- ctrl + / 토글링
-- create 명령어 - DDL 데이터 정의어 scott은 아이디 tiger는 비밀번호
create user c##scott identified by tiger;
-- drop은 계정삭제용도
drop user c##scott;
-- 21G xe 버전, "_ORACLE_SCRIPT"=true; 셋 해줘야함.
alter session set "_ORACLE_SCRIPT"=true;
create user kh identified by kh;

-- DCL
-- grant 권한명, 롤명 to scott;
-- create session, create table 처럼 각각의 권한명을 모두 나열하여 적기 어려움
-- 권한들을 묶어서 만들어둔 롤role을 사용하여 권한을 부여함.
-- connect - 접속관련 권한들이 있는 role
-- resource - 자원(table, view 등 객체) 관련 권한들이 있는 role
grant connect, resource to c##scott, kh;
grant connect, resource to kh;
-- revoke는 주었던 권한을 빼았음
revoke connectl, resource from kh;
grant connect, resource to scott, kh;
-- 21G xe 버전, dba 추가
grant connect, resource, dba to scott, kh;


