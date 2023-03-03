SELECT * FROM  COMPANY c, PRODUCT p

--1. inner join
SELECT c.ID AS 회사ID, c.NAME AS 회사명, c.ADDR AS 회사주소, c.TEL AS 회사연락처, 
p.ID AS 상품ID, p.NAME AS 상품명, p.CONTENT AS 상품내용, p.PRICE AS 상품가격, p.IMG AS 상품이미지
FROM COMPANY c, PRODUCT p
WHERE p.COMPANY = c.ID 
ORDER BY COMPANY

--2. left outer join
SELECT c.ID AS 회사ID, c.NAME AS 회사명, c.ADDR AS 회사주소, c.TEL AS 회사연락처, 
p.ID AS 상품ID, p.NAME AS 상품명, p.CONTENT AS 상품내용, p.PRICE AS 상품가격, p.IMG AS 상품이미지
FROM COMPANY c 
LEFT OUTER JOIN  PRODUCT p 
ON (p.COMPANY = c.ID)
ORDER BY COMPANY

--3. right outer join
SELECT c.ID AS 회사ID, c.NAME AS 회사명, c.ADDR AS 회사주소, c.TEL AS 회사연락처, 
p.ID AS 상품ID, p.NAME AS 상품명, p.CONTENT AS 상품내용, p.PRICE AS 상품가격, p.IMG AS 상품이미지
FROM COMPANY c 
RIGHT OUTER JOIN PRODUCT p 
ON (p.COMPANY = c.ID)
ORDER BY COMPANY
