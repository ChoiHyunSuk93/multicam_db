SELECT UPPER(ename) FROM EMP e --첫글자 대문자 변환

SELECT LENGTH (ename) FROM EMP e --글자 수

SELECT substr(ename, 2) FROM EMP e --2번째 글자부터 끝까지 

SELECT substr(ename, 1, 2) FROM EMP e --1번째 글자부터 2개

SELECT SUBSTR(ename, -2) FROM EMP e -- -2번째 글자부터 끝까지

SELECT REPLACE (ename, 'L', 'N') FROM EMP e --특정문자를 다른 문자로 대체 L->N

SELECT LPAD(ename, 6, '#') FROM EMP e --특정문자를 다른 문자로 대체. 6개의 나머지 앞자리를 #으로 채우기. 채울 문자를 넣지 않은 경우 공백으로 채움

SELECT concat(EMPNO, ENAME) FROM EMP e --문자열을 결합

SELECT EMPNO || ':' || ENAME FROM EMP

SELECT TRIM('W' FROM ename) FROM EMP e --특정문자나 공백을 삭제

SELECT TRIM(' hong ') FROM EMP e --앞뒤로 공백 삭제

SELECT round(1234.567, 1) FROM DUAL

SELECT round(1234.567, -1) FROM DUAL

SELECT ADD_MONTHS(SYSDATE, 3)  FROM DUAL