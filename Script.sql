CREATE TABLE "HR"."HOBBY2" 
   (	"HOBBYID" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"LOCATION" VARCHAR2(100)
   )
   
   INSERT INTO HOBBY VALUES ('100', 'run', 'seoul')
   
   INSERT INTO HOBBY VALUES ('200', 'book', 'busan')
   
   SELECT * FROM HOBBY
   
   SELECT content FROM HOBBY h 
   
   SELECT location, content FROM HOBBY h 