CREATE TABLE MEMBER(
MEMBER_ID VARCHAR2(20),
MEMBER_PWD VARCHAR2(20),
MEMBER_NAME VARCHAR2(20));

COMMENT ON COLUMN 테이블명.컬럼명 IS '주석 내용';

COMMENT ON COLUMN MEMBER.MEMBER_ID IS '회원아이디';
COMMENT ON COLUMN MEMBER.MEMBER_PWD IS '비밀번호';
COMMENT ON COLUMN MEMBER.MEMBER_NAME IS '회원이름';

DESC USER_CONSTRAINTS;
DESC USER_CONS_COLUMNS;

CREATE TABLE USER_NOTNULL(
USER_NO NUMBER NOT NULL,
USER_ID VARCHAR2(20) NOT NULL,
USER_PWD VARCHAR2(30) NOT NULL,
USER_NAME VARCHAR2(30),
GENDER VARCHAR2(10),
PHONE VARCHAR2(30),
EMAIL VARCHAR2(50));

INSERT INTO USER_NOTNULL VALUES(1,'user01', 'pass01','홍길동','남','010-1234-1234','hong123@kh.or.kr');
--INSERT INTO USER_NOTNULL VALUES(2,NULL,NULL,NULL,NULL,'010-1234-4566','hong124@kh.kr');

create table user_unique(
user_no number,
user_ID VARCHAR2(20) UNIQUE,
USER_PWD VARCHAR(30) NOT NULL,
USER_NAME VARCHAR2(30),
GENDER VARCHAR2(10),
PHONE VARCHAR2(30),
EMAIL VARCHAR2(50));

INSERT INTO USER_UNIQUE VALUES(1, 'user01','pass01','홍길동','남','010-1234-5678','hong123@kh.or.kr');
INSERT INTO USER_UNIQUE VALUES(1, 'user01','pass01',null,null,'010-1234-5678','hong123@kh.or.kr');

create table USER_UNIQUE2(
USER_NO NUMBER,
USER_ID VARCHAR2(20),
USER_PWD VARCHAR2(30) NOT NULL,
USER_NAME VARCHAR2(30),
GENDER VARCHAR2(10),
PHONE VARCHAR2(30),
EMAIL VARCHAR2(50),
UNIQUE (USER_ID));

INSERT INTO USER_UNIQUE2 VALUES(1, 'user01', 'pass01', '홍길동', '남', '010-1234-5678', 
'hong123@kh.or.kr');
INSERT INTO USER_UNIQUE2 VALUES(1, 'user01', 'pass01', NULL, NULL, '010-1234-5678', 
'hong123@kh.or.kr');
INSERT INTO USER_UNIQUE2 VALUES(1, NULL, 'pass01', '홍길동', '남', '010-1234-5678', 
'hong123@kh.or.kr');
INSERT INTO USER_UNIQUE2 VALUES(1, NULL, 'pass01', '홍길동', '남', '010-1234-5678', 
'hong123@kh.or.kr');

select * from user_unique2;

CREATE TABLE USER_UNIQUE3(
USER_NO NUMBER,
USER_ID VARCHAR2(20),
USER_PWD VARCHAR2(30) NOT NULL,
USER_NAME VARCHAR2(30),
GENDER VARCHAR2(10),
PHONE VARCHAR2(30),
EMAIL VARCHAR2(50),
UNIQUE (USER_NO, USER_ID));

INSERT INTO USER_UNIQUE3 VALUES(1, 'user01', 'pass01', '홍길동', '남', '010-1234-
5678', 'hong123@kh.or.kr');
INSERT INTO USER_UNIQUE3 VALUES(2, 'user01', 'pass01', NULL, NULL, '010-1234-
5678', 'hong123@kh.or.kr');
INSERT INTO USER_UNIQUE3 VALUES(2, 'user02', 'pass02', NULL, NULL, '010-1234-
5678', 'hong123@kh.or.kr');
INSERT INTO USER_UNIQUE3 VALUES(1, 'user01', 'pass01', NULL, NULL, '010-1234-
5678', 'hong123@kh.or.kr');

select * from USER_UNIQUE3;

drop table user_primarykey;
select * from user_primarykey;


create table user_primarykey(
user_no number primary key,
user_id varchar2(20) unique,
user_pwd varchar2(30) not null,
user_name varchar2(30),
gender varchar2(10),
phone varchar2(30),
email varchar2(50));

create table user_primarykey(
user_no number,
user_id varchar2(20)unique,
user_pwd varchar2(30) not null,
user_name varchar2(30),
gender varchar2(10),
phone varchar2(30),
email varchar2(50),
primary key(user_no));

select * from user_primarykey;

INSERT INTO USER_PRIMARYKEY VALUES(1, 'user01', 'pass01', '홍길동', '남', '010-1234-5678', 'hong123@kh.or.kr');
INSERT INTO USER_PRIMARYKEY VALUES(1, 'user02', 'pass02', '이순신', '남', '010-5678-9012', 'lee123@kh.or.kr');
INSERT INTO USER_PRIMARYKEY VALUES(NULL, 'user03', 'pass03', '유관순', '여', '010-3131-3131', 
'yoo123@kh.or.kr');

CREATE TABLE USER_PRIMARYKEY2(
USER_NO NUMBER,
USER_ID VARCHAR2(20),
USER_PWD VARCHAR2(30) NOT NULL,
USER_NAME VARCHAR2(30),
GENDER VARCHAR2(10),
PHONE VARCHAR2(30),
EMAIL VARCHAR2(50),
PRIMARY KEY (USER_NO, USER_ID));

INSERT INTO USER_PRIMARYKEY2 VALUES(1, 'user01', 'pass01', '홍길동', '남', '010-
1234-5678', 'hong123@kh.or.kr');
INSERT INTO USER_PRIMARYKEY2 VALUES(1, 'user02', 'pass02', '이순신', '남', '010-
5678-9012', 'lee123@kh.or.kr');
INSERT INTO USER_PRIMARYKEY2 VALUES(2, 'user01', 'pass01', '유관순', '여', '010-
3131-3131', 'yoo123@kh.or.kr');
INSERT INTO USER_PRIMARYKEY2 VALUES(1, 'user01', 'pass01', '신사임당', '여', '010-
1111-1111', 'shin123@kh.or.kr');

select * from user_primarykey2;

CREATE TABLE USER_GRADE(
GRADE_CODE NUMBER PRIMARY KEY,
GRADE_NAME VARCHAR2(30) NOT NULL
);

INSERT INTO USER_GRADE VALUES(10, '일반회원');
INSERT INTO USER_GRADE VALUES(20, '우수회원');
INSERT INTO USER_GRADE VALUES(30, '특별회원');

select * from user_grade;