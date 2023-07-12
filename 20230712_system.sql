alter user scott identified by tiger;

drop user scott;

alter session set "_ORACLE_SCRIPT"=true;
create user scott identified by tiger;
grant connect, resource, dba to scott;

create user kh identified by kh;
grant connect, resource, dba to kh;
