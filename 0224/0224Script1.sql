CREATE TABLE "HR"."NOTICE" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEW_COUNT" NUMBER(38,0)
   )
   
--   추천게시판(recommend)
--   re_no 숫자, title 문자, content 문자, writer 문자
   
CREATE TABLE "HR"."RECOMMEND" 
(	"RE_NO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100)
	)
	
	
DROP TABLE RECOMMEND -- 테이블 통째로 삭제
	
CREATE TABLE "HR"."RECOMMEND" 
(	"RE_NO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100)
)
	
ALTER TABLE HR.RECOMMEND MODIFY TITLE VARCHAR2(333)
	
ALTER TABLE HR.RECOMMEND ADD VIEWCOUNT NUMBER(38,0) NULL
	
ALTER TABLE recommend DROP COLUMN viewcount

DROP TABLE BBS2


-- DCL : DB 관리/ 제어해주는 문법(계정생성, 계정권한부여, 백업, 복구)

CREATE USER apple IDENTIFIED BY a1234

GRANT CONNECT, resource, dba TO apple

CREATE TABLE "HR"."PRODUCT3" 
   (	"ID" VARCHAR2(100) PRIMARY KEY , 
	"NAME" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"PRICE" NUMBER(38,0)
	)
	
INSERT INTO MEMBER VALUES ('100', '100', 'park', '011')

INSERT INTO MEMBER VALUES ('200', '200', 'park', '011')

INSERT INTO MEMBER VALUES ('300', '300', 'park', '011')

SELECT * FROM "MEMBER"

SELECT * FROM MEMBER WHERE id = '100' -- id가 100인 모든 컬럼

SELECT ID, NAME FROM MEMBER WHERE id = '100' -- id가 100인 id, name 컬럼

SELECT NAME, ID FROM MEMBER WHERE id = '100' -- id가 100인 id, name 컬럼

SELECT tel FROM MEMBER WHERE name = 'park'

UPDATE "MEMBER" SET NAME = 'kim' WHERE id = '100'

UPDATE "MEMBER" SET NAME = 'yang' WHERE id = '200'

UPDATE "MEMBER" SET NAME = 'lee' WHERE id = '300'

UPDATE "MEMBER" SET PW = '8888', TEL = '9999' WHERE ID = 'ice'

DELETE FROM MEMBER WHERE ID = '100'

DELETE FROM MEMBER WHERE tel = '011'

CREATE TABLE product (
	id varchar2(200), 
	name varchar2(200), 
	content varchar2(200), 
	price varchar2(200), 
	company varchar2(200), 
	img varchar2(200)
)

CREATE TABLE product2 (
	id varchar2(200), 
	name varchar2(200), 
	content varchar2(200), 
	price varchar2(200), 
	company varchar2(200), 
	img varchar2(200)
)

SELECT * FROM MEMBER ORDER BY id -- 오름차순

SELECT * FROM MEMBER ORDER BY id DESC -- 내림차순

CREATE TABLE reply (
	id varchar2(100) PRIMARY key, 
	oriid varchar2(100), 
	content varchar2(100), 
	writer varchar2(100)
)
