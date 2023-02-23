CREATE TABLE member2 (  
	id varchar2(100),
	pw varchar2(100),
	name varchar2(100),
	tel varchar2(100)
)

CREATE TABLE bbs2 (
	id varchar2(100),
	title varchar2(100),
	content varchar2(100),
	writer varchar2(100)
)

CREATE TABLE product2 (
	no varchar2(100),
	name varchar2(100),
	content varchar2(100),
	price number(38,0)
)

CREATE TABLE "HR"."MEMBER3" 
   (	"ID" VARCHAR2(100), 
	"PW" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"TEL" VARCHAR2(100)
   )
   
   INSERT INTO "Member" VALUES ('park', '1234', 'park', '011')
   
   INSERT INTO "Member" VALUES ('apple', '1111', 'apple', '011')
   
   INSERT INTO "Member" VALUES ('ice', '2222', 'ice', '012')
   
   INSERT INTO "Member" VALUES ('melone', '3333', 'melone', '013')
   
   SELECT * FROM "Member" -- 모든 컬럼
   
   SELECT id FROM "Member"
   
   SELECT id, pw FROM "Member"