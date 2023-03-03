-- join : 왜 하는가? 검색을 하고 싶은데 항목들이 여러개의 테이블에 흩어져있는 경우
-- 		  테이블을 모아서 검색

SELECT *
FROM "MEMBER" m , BBS b
WHERE m.ID = b.WRITER

SELECT b."no", b.TITLE, NAME
FROM "MEMBER" m , BBS b 
WHERE m.ID = b.WRITER

-- Inner join : 테이블간 공통괸 값만 추출
-- emp테이블과 dept테이블을 조인
-- 하나 이상의 동일한 컬럼이 있어야 함
-- empno, ename, job, deptno, loc 컬럼 검색
-- 조인조건: deptno

SELECT e.empno, e.ENAME, e.JOB, d.DEPTNO, d.loc FROM EMP e , DEPT d 
WHERE e.DEPTNO = d.DEPTNO 
ORDER BY DEPTNO 

-- left/right outer join

SELECT *
FROM "MEMBER" m 
LEFT OUTER JOIN BBS b 
ON (m.ID = b.WRITER)

SELECT *
FROM "MEMBER" m 
right OUTER JOIN BBS b 
ON (m.ID = b.WRITER)

--1. emp테이블의 정보는 다 보이게. dept는 맞는것만 오른쪽에
SELECT *
FROM EMP e 
LEFT OUTER JOIN DEPT d 
ON(e.DEPTNO = d.DEPTNO)

--2. dept정보는 다보이게
SELECT *
FROM EMP e 
right OUTER JOIN DEPT d 
ON (d.DEPTNO = e.DEPTNO)

-- 연습문제
--1
SELECT *
FROM "MEMBER" m , BBS b 
WHERE m.ID = b.WRITER 

--2
SELECT m.ID , m.NAME , b.TITLE , b.CONTENT 
FROM "MEMBER" m 
LEFT OUTER JOIN BBS b 
ON (m.ID = b.WRITER)

--3
SELECT m.ID , m.NAME , b.TITLE , b.CONTENT 
FROM "MEMBER" m 
right OUTER JOIN BBS b 
ON (m.ID = b.WRITER)


CREATE TABLE company (
	id varchar2(200) primary key,
	name varchar2(200),
	addr varchar2(200),
	tel varchar2(200)
)

INSERT INTO COMPANY VALUES ('c100', 'good', 'seoul', 011)

INSERT INTO COMPANY VALUES ('c200', 'joa', 'busan', 012)

INSERT INTO COMPANY VALUES ('c300', 'maria', 'ulsan', 013)

INSERT INTO COMPANY VALUES ('c400', 'my', 'kwangju', 014)

SELECT * FROM COMPANY c 